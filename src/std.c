#include "std.h"

unsigned int htol(unsigned int bytes){
    unsigned char* segment = (unsigned char*) &bytes;
    return ((unsigned int) segment[0] << 24 | segment[1] << 16 | segment[2] << 8 | segment[3]);
}