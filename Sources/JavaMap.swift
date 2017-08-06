
/// generated by: genswift.java 'java/lang|java/util|java/sql|java/awt|javax/swing' ///

/// JAVA_HOME: /Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home ///
/// Sat Aug 05 08:42:10 BST 2017 ///

/// interface java.util.Map ///

public protocol JavaMap: JavaProtocol {

    /// public abstract java.lang.Object java.util.Map.remove(java.lang.Object)

    func remove( arg0: JavaObject? ) -> JavaObject!

    /// public default boolean java.util.Map.remove(java.lang.Object,java.lang.Object)

    func remove( arg0: JavaObject?, arg1: JavaObject? ) -> Bool

    /// public abstract java.lang.Object java.util.Map.get(java.lang.Object)

    func get( arg0: JavaObject? ) -> JavaObject!

    /// public abstract java.lang.Object java.util.Map.put(java.lang.Object,java.lang.Object)

    func put( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject!

    /// public abstract boolean java.util.Map.equals(java.lang.Object)

    func equals( arg0: JavaObject? ) -> Bool

    /// public abstract java.util.Collection java.util.Map.values()

    /// public abstract int java.util.Map.hashCode()

    func hashCode() -> Int

    /// public abstract void java.util.Map.clear()

    /// public abstract boolean java.util.Map.isEmpty()

    func isEmpty() -> Bool

    /// public default java.lang.Object java.util.Map.replace(java.lang.Object,java.lang.Object)

    func replace( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject!

    /// public default boolean java.util.Map.replace(java.lang.Object,java.lang.Object,java.lang.Object)

    func replace( arg0: JavaObject?, arg1: JavaObject?, arg2: JavaObject? ) -> Bool

    /// public default void java.util.Map.replaceAll(java.util.function.BiFunction)

    /// public abstract int java.util.Map.size()

    func size() -> Int

    /// public abstract java.util.Set java.util.Map.entrySet()

    func entrySet() -> JavaSet!

    /// public abstract void java.util.Map.putAll(java.util.Map)

    /// public default java.lang.Object java.util.Map.putIfAbsent(java.lang.Object,java.lang.Object)

    func putIfAbsent( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject!

    /// public abstract java.util.Set java.util.Map.keySet()

    func keySet() -> JavaSet!

    /// public abstract boolean java.util.Map.containsValue(java.lang.Object)

    func containsValue( arg0: JavaObject? ) -> Bool

    /// public abstract boolean java.util.Map.containsKey(java.lang.Object)

    func containsKey( arg0: JavaObject? ) -> Bool

    /// public default java.lang.Object java.util.Map.getOrDefault(java.lang.Object,java.lang.Object)

    func getOrDefault( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject!

    /// public default void java.util.Map.forEach(java.util.function.BiConsumer)

    /// public default java.lang.Object java.util.Map.computeIfAbsent(java.lang.Object,java.util.function.Function)

    func computeIfAbsent( arg0: JavaObject?, arg1: /* java.util.function.Function */ UnclassedProtocol? ) -> JavaObject!

    /// public default java.lang.Object java.util.Map.computeIfPresent(java.lang.Object,java.util.function.BiFunction)

    func computeIfPresent( arg0: JavaObject?, arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject!

    /// public default java.lang.Object java.util.Map.compute(java.lang.Object,java.util.function.BiFunction)

    func compute( arg0: JavaObject?, arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject!

    /// public default java.lang.Object java.util.Map.merge(java.lang.Object,java.lang.Object,java.util.function.BiFunction)

    func merge( arg0: JavaObject?, arg1: JavaObject?, arg2: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject!

}


open class JavaMapForward: JNIObjectForward, JavaMap {

    private static var JavaMapJNIClass: jclass?

    /// public abstract java.lang.Object java.util.Map.remove(java.lang.Object)

    private static var remove_MethodID_21: jmethodID?

    open func remove( arg0: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "remove", methodSig: "(Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.remove_MethodID_21, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func remove( _ _arg0: JavaObject? ) -> JavaObject! {
        return remove( arg0: _arg0 )
    }

    /// public default boolean java.util.Map.remove(java.lang.Object,java.lang.Object)

    private static var remove_MethodID_22: jmethodID?

    open func remove( arg0: JavaObject?, arg1: JavaObject? ) -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "remove", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;)Z", methodCache: &JavaMapForward.remove_MethodID_22, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public abstract java.lang.Object java.util.Map.get(java.lang.Object)

    private static var get_MethodID_23: jmethodID?

    open func get( arg0: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "get", methodSig: "(Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.get_MethodID_23, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func get( _ _arg0: JavaObject? ) -> JavaObject! {
        return get( arg0: _arg0 )
    }

    /// public abstract java.lang.Object java.util.Map.put(java.lang.Object,java.lang.Object)

    private static var put_MethodID_24: jmethodID?

    open func put( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "put", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.put_MethodID_24, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func put( _ _arg0: JavaObject?, _ _arg1: JavaObject? ) -> JavaObject! {
        return put( arg0: _arg0, arg1: _arg1 )
    }

    /// public abstract boolean java.util.Map.equals(java.lang.Object)

    private static var equals_MethodID_25: jmethodID?

    open func equals( arg0: JavaObject? ) -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "equals", methodSig: "(Ljava/lang/Object;)Z", methodCache: &JavaMapForward.equals_MethodID_25, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public abstract java.util.Collection java.util.Map.values()

    /// public abstract int java.util.Map.hashCode()

    private static var hashCode_MethodID_26: jmethodID?

    open func hashCode() -> Int {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "hashCode", methodSig: "()I", methodCache: &JavaMapForward.hashCode_MethodID_26, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Int(), from: __return )
    }


    /// public abstract void java.util.Map.clear()

    /// public abstract boolean java.util.Map.isEmpty()

    private static var isEmpty_MethodID_27: jmethodID?

    open func isEmpty() -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "isEmpty", methodSig: "()Z", methodCache: &JavaMapForward.isEmpty_MethodID_27, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public default java.lang.Object java.util.Map.replace(java.lang.Object,java.lang.Object)

    private static var replace_MethodID_28: jmethodID?

    open func replace( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "replace", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.replace_MethodID_28, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func replace( _ _arg0: JavaObject?, _ _arg1: JavaObject? ) -> JavaObject! {
        return replace( arg0: _arg0, arg1: _arg1 )
    }

    /// public default boolean java.util.Map.replace(java.lang.Object,java.lang.Object,java.lang.Object)

    private static var replace_MethodID_29: jmethodID?

    open func replace( arg0: JavaObject?, arg1: JavaObject?, arg2: JavaObject? ) -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        __args[2] = JNIType.toJava( value: arg2 != nil ? arg2! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "replace", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", methodCache: &JavaMapForward.replace_MethodID_29, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public default void java.util.Map.replaceAll(java.util.function.BiFunction)

    /// public abstract int java.util.Map.size()

    private static var size_MethodID_30: jmethodID?

    open func size() -> Int {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "size", methodSig: "()I", methodCache: &JavaMapForward.size_MethodID_30, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Int(), from: __return )
    }


    /// public abstract java.util.Set java.util.Map.entrySet()

    private static var entrySet_MethodID_31: jmethodID?

    open func entrySet() -> JavaSet! {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "entrySet", methodSig: "()Ljava/util/Set;", methodCache: &JavaMapForward.entrySet_MethodID_31, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaSetForward( javaObject: __return ) : nil
    }


    /// public abstract void java.util.Map.putAll(java.util.Map)

    /// public default java.lang.Object java.util.Map.putIfAbsent(java.lang.Object,java.lang.Object)

    private static var putIfAbsent_MethodID_32: jmethodID?

    open func putIfAbsent( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "putIfAbsent", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.putIfAbsent_MethodID_32, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func putIfAbsent( _ _arg0: JavaObject?, _ _arg1: JavaObject? ) -> JavaObject! {
        return putIfAbsent( arg0: _arg0, arg1: _arg1 )
    }

    /// public abstract java.util.Set java.util.Map.keySet()

    private static var keySet_MethodID_33: jmethodID?

    open func keySet() -> JavaSet! {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "keySet", methodSig: "()Ljava/util/Set;", methodCache: &JavaMapForward.keySet_MethodID_33, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaSetForward( javaObject: __return ) : nil
    }


    /// public abstract boolean java.util.Map.containsValue(java.lang.Object)

    private static var containsValue_MethodID_34: jmethodID?

    open func containsValue( arg0: JavaObject? ) -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "containsValue", methodSig: "(Ljava/lang/Object;)Z", methodCache: &JavaMapForward.containsValue_MethodID_34, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public abstract boolean java.util.Map.containsKey(java.lang.Object)

    private static var containsKey_MethodID_35: jmethodID?

    open func containsKey( arg0: JavaObject? ) -> Bool {
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallBooleanMethod( object: javaObject, methodName: "containsKey", methodSig: "(Ljava/lang/Object;)Z", methodCache: &JavaMapForward.containsKey_MethodID_35, args: &__args, locals: &__locals )
        return JNIType.toSwift( type: Bool(), from: __return )
    }


    /// public default java.lang.Object java.util.Map.getOrDefault(java.lang.Object,java.lang.Object)

    private static var getOrDefault_MethodID_36: jmethodID?

    open func getOrDefault( arg0: JavaObject?, arg1: JavaObject? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getOrDefault", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", methodCache: &JavaMapForward.getOrDefault_MethodID_36, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func getOrDefault( _ _arg0: JavaObject?, _ _arg1: JavaObject? ) -> JavaObject! {
        return getOrDefault( arg0: _arg0, arg1: _arg1 )
    }

    /// public default void java.util.Map.forEach(java.util.function.BiConsumer)

    /// public default java.lang.Object java.util.Map.computeIfAbsent(java.lang.Object,java.util.function.Function)

    private static var computeIfAbsent_MethodID_37: jmethodID?

    open func computeIfAbsent( arg0: JavaObject?, arg1: /* java.util.function.Function */ UnclassedProtocol? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "computeIfAbsent", methodSig: "(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", methodCache: &JavaMapForward.computeIfAbsent_MethodID_37, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func computeIfAbsent( _ _arg0: JavaObject?, _ _arg1: /* java.util.function.Function */ UnclassedProtocol? ) -> JavaObject! {
        return computeIfAbsent( arg0: _arg0, arg1: _arg1 )
    }

    /// public default java.lang.Object java.util.Map.computeIfPresent(java.lang.Object,java.util.function.BiFunction)

    private static var computeIfPresent_MethodID_38: jmethodID?

    open func computeIfPresent( arg0: JavaObject?, arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "computeIfPresent", methodSig: "(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", methodCache: &JavaMapForward.computeIfPresent_MethodID_38, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func computeIfPresent( _ _arg0: JavaObject?, _ _arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        return computeIfPresent( arg0: _arg0, arg1: _arg1 )
    }

    /// public default java.lang.Object java.util.Map.compute(java.lang.Object,java.util.function.BiFunction)

    private static var compute_MethodID_39: jmethodID?

    open func compute( arg0: JavaObject?, arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "compute", methodSig: "(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", methodCache: &JavaMapForward.compute_MethodID_39, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func compute( _ _arg0: JavaObject?, _ _arg1: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        return compute( arg0: _arg0, arg1: _arg1 )
    }

    /// public default java.lang.Object java.util.Map.merge(java.lang.Object,java.lang.Object,java.util.function.BiFunction)

    private static var merge_MethodID_40: jmethodID?

    open func merge( arg0: JavaObject?, arg1: JavaObject?, arg2: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        var __args = [jvalue]( repeating: jvalue(), count: 3 )
        var __locals = [jobject]()
        __args[0] = JNIType.toJava( value: arg0 != nil ? arg0! as JNIObject : nil, locals: &__locals )
        __args[1] = JNIType.toJava( value: arg1 != nil ? arg1! as JNIObject : nil, locals: &__locals )
        __args[2] = JNIType.toJava( value: arg2, locals: &__locals )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "merge", methodSig: "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", methodCache: &JavaMapForward.merge_MethodID_40, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? JavaObject( javaObject: __return ) : nil
    }

    open func merge( _ _arg0: JavaObject?, _ _arg1: JavaObject?, _ _arg2: /* java.util.function.BiFunction */ UnclassedProtocol? ) -> JavaObject! {
        return merge( arg0: _arg0, arg1: _arg1, arg2: _arg2 )
    }

}


