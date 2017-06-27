#include <stdio.h>
#include "NativeMethods.h"

JNIEXPORT void JNICALL Java_NativeMethods_nativeOne(JNIEnv* env, jobject thisObj)
{
    printf("Hello Advanced Java World\n");
}

