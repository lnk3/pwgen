CC = gcc

CFLAGS = -Wall

# For libraries
LDFLAGS = 

OBJFILES = files/main.o files/interface.o

# Name of program
TARGET = pwgen

all : $(TARGET)

$(TARGET) : $(OBJFILES)
	$(CC) $(FLAGS) -o executables/$(TARGET) $(OBJFILES) $(LDFLAGS)

clean :
	rm -f $(OBJFILES) $(TARGET) *~

#program:
#	clear
#	gcc files/*.c -o executables/progr
#	./executables/progr
