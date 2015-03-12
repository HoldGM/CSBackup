#include <stdio.h>

typedef enum{
	HALT = 0x00,
	NOP = 0x10,
	JMP = 0x70,
	SUBL = 0x61
} opcodes_t;

typedef enum{
	EAX = 0x00,
	ECX = 0x01,
	EDX = 0x02,
	EBX = 0x03,
	ESP = 0x04,
	EBP = 0x05,
	ESI = 0x06,
	EDI = 0x07,
	NONE = 0x08
} registers_t;

int running = 1;

void fetch (unsigned int pc, 
			unsigned char const *const mem, 
			opcodes_t *const ifun, 
			undisgned char *const rarb, 
			unsigned int *const valP)
{
	*ifun = mem[pc];

	switch (*ifun)
	{
		case NOP: 
			(*valP) = ++pc; 
			break;
		case HALT: 
			running = 0;
			break;
		case SUBL: 
			*rarb = mem[pc+1];
			(*valP) = pc + 2; 
			break;
	}
}

void updatepc(unsigned int valP, int *const pc, int *running)
{
	*pc = valP;
}


void process(unsigned in pc, unsigned char *mem)
{
	opcodes_t opcode;
	unsigned char rarb;
	unsigned int valP, valC;
	int valA, valB;

	while (running)
	{
		fetch(pc, mem, &opcode, &rarb, &valP, &valC);
		decode(opcode, rarb, valC, &valA, &valB);
		// execute();
		// memory();
		// writeback();
		updatepc(valP, *pc);
	}
}

int main()
{
	unsigned char memory[] = {NOP, NOP, HALT};

	process(0, memory);
}