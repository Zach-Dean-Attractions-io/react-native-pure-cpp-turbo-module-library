#include <jni.h>
#include "pure-cpp-turbo-module-library.h"

extern "C"
JNIEXPORT jdouble JNICALL
Java_com_purecppturbomodulelibrary_PureCppTurboModuleLibraryModule_nativeMultiply(JNIEnv *env, jclass type, jdouble a, jdouble b) {
    return purecppturbomodulelibrary::multiply(a, b);
}
