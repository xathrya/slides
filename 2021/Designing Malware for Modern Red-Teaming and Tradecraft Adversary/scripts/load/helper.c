/*
    Just helper file to demonstrate binary execution.
    Rename it as Mimikatz

Compile:
    $ clang helper.c -o mimikatz.exe
*/

#include <stdio.h>

int main(int argc, char* argv[])
{
    int i;

    if (argc < 2)
    {
        printf("usage: mimikatz.exe <args>\n");
        return -1;
    }
    for (i=1; i < argc; i++)
    {
        printf("arg-%d: %s\n", i, argv[i]);
    }
}