# Makefile
TARGET= my_prog		# Variable assignment
$(TARGET): files/main.c
	gcc -o executables/my_progr files/main.c && executables/my_prog.exe