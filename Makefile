CC = gcc

CFLAGS = -Wall

# For libraries
LDFLAGS = 

OBJFILES = main.o interface.o

# Name of program
TARGET = pwgen

all : $(TARGET)

$(TARGET) : $(OBJFILES)
	$(CC) $(FLAGS) -o executables/$(TARGET) files/$(OBJFILES) $(LDFLAGS)

clean :
	rm -f $(OBJFILES) $(TARGET) *~

#program:
#	clear
#	gcc files/*.c -o executables/progr
#	./executables/progr
