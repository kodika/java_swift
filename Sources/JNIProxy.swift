//
//  JNIProxy.swift
//  java_swift
//
//  Created by User on 06/08/2017.
//  Copyright © 2017 John Holdsworth. All rights reserved.
//

import Foundation

open class JNIReleasableProxy {

    static fileprivate func recoverPointer( _ swiftObject: jlong, _ file: StaticString = #file, _ line: Int = #line ) -> uintptr_t {
        #if os(Android)
            let swiftPointer = uintptr_t(swiftObject&0xffffffff)
        #else
            let swiftPointer = uintptr_t(swiftObject)
        #endif
        if swiftPointer == 0 {
            JNI.report( "Race condition setting swiftObject on Java Proxy. More thought required...", file, line )
        }
        return swiftPointer
    }

    static public func canrelease( swiftObject: jlong ) {
        let toRelease = unsafeBitCast( recoverPointer( swiftObject ), to: JNIReleasableProxy.self )
        toRelease.clearLocal()

        NSLog( "Releasing a \(toRelease)")
        Unmanaged.passUnretained(toRelease).release()
    }

    open func clearLocal() {
    }

}

public typealias JNIReleasableProxy__finalize_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong ) -> ()

public func JNIReleasableProxy__finalize(  _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong ) {
    JNIReleasableProxy.canrelease( swiftObject: __swiftObject )
}

public let JNIReleasableProxy__finalize_thunk: JNIReleasableProxy__finalize_type = JNIReleasableProxy__finalize


open class JNILocalProxy<Owned, OwnedType>: JNIReleasableProxy, JNIObjectProtocol {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        let proxy = createProxy( className: type(of: self).proxyClassName(),
                                 classObject: type(of: self).proxyClass() )
        locals.pointee.append( proxy! )
        return proxy
    }

    open class func proxyClassName() -> String {
        fatalError("proxyClassName() subclass responsibility")
    }
    open class func proxyClass() -> jclass? {
        fatalError("proxyClass() subclass responsibility")
    }

    fileprivate var owned: Owned

    public init( owned: OwnedType, proto: Owned ) {
        self.owned = proto ////
    }

    open func swiftValue() -> jvalue {
        return jvalue( j: jlong(unsafeBitCast(Unmanaged.passRetained(self), to: uintptr_t.self)) )
    }

    open func takeOwnership( javaObject: jobject?, _ file: StaticString = #file, _ line: Int = #line ) {
        guard javaObject != nil else { return }
        var locals = [jobject]()
        var fieldID: jfieldID?
        let existing = JNIField.GetLongField( fieldName: "__swiftObject", fieldType: "J", fieldCache: &fieldID,
                                              object: javaObject, locals: &locals, file, line )
        JNIField.SetLongField( fieldName: "__swiftObject", fieldType: "J", fieldCache: &fieldID,
                               object: javaObject, value: swiftValue().j, locals: &locals, file, line )
        if existing != 0 {
            JNIReleasableProxy.canrelease( swiftObject: existing )
        }
    }

    open static func swiftObject( jniEnv: UnsafeMutablePointer<JNIEnv?>?, javaObject: jobject?, swiftObject: jlong ) -> Owned {
        return unsafeBitCast( recoverPointer( swiftObject ), to: JNILocalProxy<Owned, OwnedType>.self ).owned
    }

    func createProxy( className: String, classObject: jclass?, file: StaticString = #file, _ line: Int = #line ) -> jobject? {
        var locals = [jobject]()
        var methodID: jmethodID?
        var args: [jvalue] = [swiftValue()]
        if let newObject = JNIMethod.NewObject( className: className, classObject: classObject,
                                                methodSig: "(J)V", methodCache: &methodID,
                                                args: &args, locals: &locals ) {
            return newObject
        }
        else {
            JNI.report( "Unable to create proxy: \(className)" )
            return nil
        }
    }

}

open class JNIObjectProxy<ObjectOwned> : JNILocalProxy<ObjectOwned, JNIObject> where ObjectOwned: JNIObject {

    override public func localJavaObject(_ locals: UnsafeMutablePointer<[jobject]>) -> jobject? {
        let local = JNI.api.NewLocalRef( JNI.env, owned.javaObject )
        if local != nil {
            locals.pointee.append( local! )
        }
        return local
    }

    override open func clearLocal() {
        owned.clearLocal()
    }

}

