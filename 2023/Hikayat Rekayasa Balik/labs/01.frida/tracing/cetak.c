/*
    Archonlabs Public Document

Compile:
    $ gcc cetak.c -o cetak
*/

#include <stdio.h>

#ifdef linux
    #include <unistd.h>
    #define sleep(t) usleep(t * 1000)
#elif _WIN32
    #include <windows.h>
    #define sleep(t) Sleep(t)
#endif

void cetak(char * s)
{
    printf("%s\n", s);
    sleep(500);
}

int main()
{
    printf("fungsi cetak di %p\n", cetak);
    while (1)
    {
        cetak("Halo dunia!");
    }
}