#include "Compute.h"

JNIEXPORT jdouble JNICALL Java_Compute_compute(JNIEnv *env, jclass clazz, jint i, jlong n)
{
    return i + n;
}