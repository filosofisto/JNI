#include "Reverse.h"
#include <stdlib.h>
#include <string.h>

JNIEXPORT jstring JNICALL Java_Reverse_reverse(JNIEnv *env, jclass cl, jstring text)
{
    const char *inString = env->GetStringUTFChars(text, NULL);
    int len = env->GetStringUTFLength(text);
    char *outString = (char*) malloc(strlen(inString)+1);

    for (int k = 0; k < len; k++)
        outString[k] = inString[len-k-1];
    outString[len] = '\0';

    return env->NewStringUTF(outString);
}