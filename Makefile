CC = gcc

CFLAGS = -Wall

# For libraries
LDFLAGS = 

OBJFILES = main.o

# Name of program
TARGET = pwgen

all : $(TARGET)

$(TARGET) : $(OBJFILES)
	$(CC) $(FLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

clean :
	rm -f $(OBJFILES) $(TARGET) *~

#program:
#	clear
#	gcc files/*.c -o executables/progr
#	./executables/progr
