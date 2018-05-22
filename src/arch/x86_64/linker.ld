ENTRY(start)	/* sets start as the entry point the bootloader will jump into after loading the kernel */ 

SECTIONS {

	/* sets the load address */
	. = 1M;
	
	/* the executable will have the boot and the .text sections */
	.boot :
	{
		/* .multiboot_header is added to the first output section to ensure they are at the beginning of the executable */
		*(.multiboot_header)
	}
	
	.text :
	{
		*(.text)
	}
}
