#include <stdio.h>
#include "NativeMethods.h"

JNIEXPORT void JNICALL Java_NativeMethods_nativeTwo(JNIEnv* env, jobject thisObj)
{
    printf("Hello from the second method\n");
}

