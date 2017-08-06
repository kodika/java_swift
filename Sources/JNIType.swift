//
//  JNIType.swift
//  SwiftJava
//
//  Created by John Holdsworth on 17/07/2016.
//  Copyright (c) 2016 John Holdsworth. All rights reserved.
//

public class JNIType {

    public static func toJava( value: Bool, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( z: jboolean( value ? JNI_TRUE : JNI_FALSE ) )
    }

    public static func toSwift( type: Bool, from: jboolean ) -> Bool {
        return from != jboolean( JNI_FALSE )
    }

    public static func toJava( value: [Bool]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if let value = value, let array = JNI.api.NewBooleanArray( JNI.env, jsize(value.count) ) {
            var _value = value.map { jboolean( $0 ? JNI_TRUE : JNI_FALSE ) }
            withUnsafePointer(to: &_value[0]) {
                valuePtr in
                JNI.api.SetBooleanArrayRegion( JNI.env, array, 0,  jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Bool], from: jobject? ) -> [Bool]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [jboolean]( repeating: jboolean(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetBooleanArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value.map { $0 != jboolean( JNI_FALSE ) }
    }

    public static func toJava( value: [[Bool]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Bool]], from: jobject? ) -> [[Bool]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Bool](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Bool]() }
    }


    public static func toJava( value: Int8, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( b: value )
    }

    public static func toSwift( type: Int8, from: jbyte ) -> jbyte {
        return from
    }

    public static func toJava( value: [Int8]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewByteArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetByteArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Int8], from: jobject? ) -> [Int8]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Int8]( repeating: Int8(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetByteArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[Int8]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Int8]], from: jobject? ) -> [[Int8]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Int8](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Int8]() }
    }


    public static func toJava( value: Int16, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( s: value )
    }

    public static func toSwift( type: Int16, from: jshort ) -> Int16 {
        return from
    }

    public static func toJava( value: [Int16]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewShortArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetShortArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Int16], from: jobject? ) -> [Int16]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Int16]( repeating: Int16(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetShortArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[Int16]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Int16]], from: jobject? ) -> [[Int16]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Int16](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Int16]() }
    }


    public static func toJava( value: UInt16, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( c: value )
    }

    public static func toSwift( type: UInt16, from: jchar ) -> UInt16 {
        return from
    }

    public static func toJava( value: [UInt16]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewCharArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetCharArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [UInt16], from: jobject? ) -> [UInt16]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [UInt16]( repeating: UInt16(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetCharArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[UInt16]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[UInt16]], from: jobject? ) -> [[UInt16]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [UInt16](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [UInt16]() }
    }


    public static func toJava( value: Int32, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( i: jint(value) )
    }

    public static func toSwift( type: Int32, from: jint ) -> Int32 {
        return Int32(from)
    }

    public static func toJava( value: [Int32]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewIntArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                valuePtr.withMemoryRebound( to: jint.self, capacity: value.count ) {
                    JNI.api.SetIntArrayRegion( JNI.env, array, 0, jsize(value.count), $0)
                }
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Int32], from: jobject? ) -> [Int32]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Int32]( repeating: Int32(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            valuePtr.withMemoryRebound( to: jint.self, capacity: value.count ) {
                JNI.api.GetIntArrayRegion( JNI.env, from, 0, length, $0 )
            }
        }
        return value
    }

    public static func toJava( value: [[Int32]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Int32]], from: jobject? ) -> [[Int32]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Int32](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Int32]() }
    }


    public static func toJava( value: Int, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( j: Int64(value) )
    }

    public static func toSwift( type: Int, from: jint ) -> Int {
        return Int(from)
    }

    public static func toJava( value: [Int]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if let value = value, let array = JNI.api.NewIntArray( JNI.env, jsize(value.count) ) {
            var _value = value.map { jint($0) }
            withUnsafePointer(to: &_value[0]) {
                valuePtr in
                JNI.api.SetIntArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Int], from: jobject? ) -> [Int]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [jint]( repeating: jint(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetIntArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value.map { Int($0) }
    }

    public static func toJava( value: [[Int]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Int]], from: jobject? ) -> [[Int]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Int](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Int]() }
    }


    public static func toJava( value: Int64, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( j: Int64(value) )
    }

    public static func toSwift( type: Int64, from: jlong ) -> Int64 {
        return Int64(from)
    }

    public static func toJava( value: [Int64]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewLongArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetLongArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Int64], from: jobject? ) -> [Int64]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Int64]( repeating: Int64(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetLongArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[Int64]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Int64]], from: jobject? ) -> [[Int64]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Int64](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Int64]() }
    }


    public static func toJava( value: Float, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( f: value )
    }

    public static func toSwift( type: Float, from: jfloat ) -> Float {
        return from
    }

    public static func toJava( value: [Float]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewFloatArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetFloatArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Float], from: jobject? ) -> [Float]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Float]( repeating: Float(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetFloatArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[Float]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Float]], from: jobject? ) -> [[Float]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Float](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Float]() }
    }


    public static func toJava( value: Double, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return jvalue( d: value )
    }

    public static func toSwift( type: Double, from: jdouble ) -> Double {
        return from
    }

    public static func toJava( value: [Double]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        if var value = value, let array = JNI.api.NewDoubleArray( JNI.env, jsize(value.count) ) {
            withUnsafePointer(to: &value[0]) {
                valuePtr in
                JNI.api.SetDoubleArrayRegion( JNI.env, array, 0, jsize(value.count), valuePtr )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [Double], from: jobject? ) -> [Double]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        let length = JNI.api.GetArrayLength( JNI.env, from )
        var value = [Double]( repeating: Double(), count: Int(length) )
        withUnsafeMutablePointer(to: &value[0]) {
            valuePtr in
            JNI.api.GetDoubleArrayRegion( JNI.env, from, 0, length, valuePtr )
        }
        return value
    }

    public static func toJava( value: [[Double]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[Double]], from: jobject? ) -> [[Double]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [Double](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [Double]() }
    }


//    public static func toJava( value: String?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
//        if value != nil, let jobj =  Array(value!.utf16).withUnsafeBufferPointer( {
//            JNI.env?.pointee?.pointee.NewString( JNI.env, $0.baseAddress, jsize($0.count) )
//        } ) {
//            locals.pointee.append( jobj )
//            return jvalue( l: jobj )
//        }
//        return jvalue( l: nil )
//    }

#if true
    public static func toSwift( type: String, from: jstring? ) -> String? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        var isCopy: jboolean = 0
        if let value = JNI.api.GetStringChars( JNI.env, from, &isCopy ) {
            let out = String( utf16CodeUnits: value, count: Int(JNI.api.GetStringLength( JNI.env, from )) )
            if isCopy != 0 || true {
                JNI.api.ReleaseStringChars( JNI.env, from, value ) ////
            }
            return out
        }
        return nil
    }
#else
    public static func toSwift( type: String, from: jstring? ) -> String? {
    guard from != nil else { return nil }
    defer { JNI.DeleteLocalRef( from ) }
    var isCopy: jboolean = 0
    if let value = JNI.api.GetStringUTFChars( JNI.env, from, &isCopy ) {
    let out = String( cString: value )
    if isCopy != 0 || true {
    JNI.api.ReleaseStringUTFChars( JNI.env, from, value ) ////
    }
    return out
    }
    return nil
    }
#endif

    private static var java_lang_StringClass: jclass?

    public static func toJava( value: [String]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        JNI.CachedFindClass( "java/lang/String", &java_lang_StringClass )
        if let value = value, let array = JNI.api.NewObjectArray( JNI.env, jsize(value.count), java_lang_StringClass, nil ) { ///
            for i in 0..<value.count {
                JNI.api.SetObjectArrayElement( JNI.env, array, jsize(i), toJava( value: value[i], locals: locals ).l )
            }
            locals.pointee.append( array )
            return jvalue( l: array )
        }
        return jvalue( l: nil )
    }

    public static func toSwift( type: [String], from: jobject? ) -> [String]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: String(), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? String() }
    }

    public static func toJava( value: [[String]]?, locals: UnsafeMutablePointer<[jobject]> ) -> jvalue {
        return toJava( value: value?.map { toJava( value: $0, locals: locals ).l }, locals: locals )
    }

    public static func toSwift( type: [[String]], from: jobject? ) -> [[String]]? {
        guard from != nil else { return nil }
        defer { JNI.DeleteLocalRef( from ) }
        return (0..<JNI.api.GetArrayLength( JNI.env, from )).map {
            toSwift( type: [String](), from: JNI.api.GetObjectArrayElement( JNI.env, from, $0 ) ) ?? [String]() }
    }

}
