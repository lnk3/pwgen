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
	char *filename = "/mnt/c/Users/lukel/Documents/GitHub/pwgen/files/img/welcome.txt";
	FILE *fptr = NULL;

	if ((fptr = fopen(filename, "r")) == NULL)
	{
		puts("Impossibile aprire");
		return;
	}

	print_image(fptr);
}