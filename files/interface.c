#include "interface.h"

void print_image(FILE *fptr)
{
	char temp;

	while ((temp = fgetc(fptr)) != EOF)
	{
		printf("%c", temp);
	}
}

void welcome()
{
	char *filename = "files/img/welcome.txt";
	FILE *fptr = NULL;

	if ((fptr = fopen(filename, "r")) == NULL)
	{
		puts("Impossibile aprire");
		return;
	}

	print_image(fptr);
}