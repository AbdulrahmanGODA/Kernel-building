OUTPUT_FORMAT(elf32-i386)
ENTRY(start)
SECTIONS
{
    . = 2M; 
    .text BLOCK(4K) : ALIGN (4K)
        {   
            *(.multiBoot)
            *(.text)
        }
    .rodata BLOCK(4K) : ALIGN (4K)
        {
            *(.rodata)
        }
    .data BLOCK(4K) : ALIGN (4K)
        {
            *(.data)
        }
    .bss BLOCK(4K) : ALIGN (4K)
        {
            *(.bss)
        }
}