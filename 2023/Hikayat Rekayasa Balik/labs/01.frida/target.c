/*
	Archonlabs Public Document

Compile:
	$ gcc target.c -o target.exe

*/

#include <stdio.h>

#ifdef linux
    #include <unistd.h>
    #define sleep(t) usleep(t * 1000)
#elif _WIN32
    #include <windows.h>
    #define sleep(t) Sleep(t)
#endif

void f(int n)
{
	printf("Number: %d\n", n);
}

int main()
{
	int i = 0;
	printf("f() is at %p\n", f);
	
	while (1)
	{
		f(i++);
		sleep(1000);
	}
}
