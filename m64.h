/*
Create declarations for a few functions and variables in M64 so they can be referenced from our C code.
Later we will tell the linker their addresses by defining labels for them in m64.asm.
*/
extern void PrintStr(int x, int y, const char* text); // 0x802D6554

