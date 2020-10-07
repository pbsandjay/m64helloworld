.n64 // Let armips know we're coding for the N64 architecture
.open "m64.z64", "m64.hw.z64", 0 // Open the ROM file
.include "m64.asm" // Include m64.asm to tell armips' linker where to find the game's function(s)
.headersize 0x80245000 // Set the displacement between ROM and RAM addresses
.org 0x802CB1C0 // Set the origin to the RAM address of the useless debug function
.area 0xA4, 0 // Define an area the size of the useless function to ensure we can't overwrite anything else
.importobj "hw.o" // Import and link the compiled C object, overwriting the useless function with our new code
.endarea
.close // Close the ROM file
