add_library(java_swift
	Sources/Exception.swift
	Sources/JNICore.swift
	Sources/JNIMethod.swift
	Sources/JNIProxy.swift
	Sources/JavaClass.swift
	Sources/JavaMap.swift
	Sources/JavaSet.swift
	Sources/Runnable.swift
	Sources/HashMap.swift
	Sources/JNIField.swift
	Sources/JNIObject.swift
	Sources/JNIType.swift
	Sources/JavaEnum.swift
	Sources/JavaObject.swift
	Sources/JavaThread.swift
	Sources/Throwable.swift
)

target_link_libraries(java_swift PUBLIC
  dispatch
  Foundation
  CJavaVM
)


set_target_properties(java_swift PROPERTIES
  INSTALL_RPATH "$ORIGIN"
  Swift_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/swift
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_BINARY_DIR}/swift
)

_install_target(java_swift)
