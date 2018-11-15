#include "kvstore.h"
main()
{
    int total=8, ctr;
    for(ctr=1; ctr<=total; ++ctr){
        char value[32];
        char key[32];
        printf(key, "ASHISH###%d", ctr);
        if(open_key(key) < 0)
             printf("Create error\n");
    }
}