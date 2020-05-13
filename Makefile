# Makefile
TARGET= my_prog		# Variable assignment
$(TARGET): files/main.c
	gcc -o my_progr files/main.c