/*
Compile:
    $ clang problem-1.c -o problem-1

Solving:
    $ python3 solve-1.py
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    if (10 > a && a > 5 && 10 > b && b > 1 && 2*b - a == 10)
    {
        printf("[*] you found me!\n");
    }
}