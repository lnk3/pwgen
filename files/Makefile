# Change the program name here, the := syntax overwrites any previous value the variable may have
program_NAME := pwgen

# This line fetches the names of all the .c files in the current directory
# and assigns them as a space separated list to the variable program_SRCS
program_SRCS := $(wildcard *.c)

# This copies the filenames changing the .c extension to .o
program_OBJS := ${program_SRCS:.c=.o}

# When you type make clean this is the list of files which will be deleted
# The += syntax appends to the variable
clean_list += $(program_OBJS) $(program_NAME)

# C Preprocessor Flags 
CPPFLAGS += 
# compiler flags
CFLAGS += -ansi -Wall -Wextra -pedantic-errors
# libraries to link to ( m == math )
program_LIBRARIES := m
# LDFLAGS is the variable to hold linker flags
LDFLAGS += $(foreach library,$(program_LIBRARIES),-l$(library))

# .PHONY means that these build targets are dummies, i.e. they don't generate any output files.
# This is typically used to run shell commands.
.PHONY: all clean indent

all: $(program_NAME)

clean:
	@- $(RM) $(clean_list)

# Generate dependencies for all files in project
# http://stackoverflow.com/questions/2801532/make-include-directive-and-dependency-generation-with-mm
%.d: $(program_SRCS)
	@ $(CC) $(CPPFLAGS) -MM $*.c | sed -e 's@^\(.*\)\.o:@\1.d \1.o:@' > $@

# add the list of dependancy files to the clean_list
clean_list += ${program_SRCS:.c=.d}

# This is the line which actually compiles your program.
$(program_NAME): $(program_OBJS)
	$(LINK.c) $(program_OBJS) -o $(program_NAME)

# If you type 'make indent' this will format all your source files.
# type 'sudo apt-get install indent' at the command prompt to install indent 
indent:
	indent -linux -brf $(program_SRCS)

# type 'make test' to run a test.
# for example this runs your program with jackjill.txt as input
# and redirects the stdout to the file jackjill.out
test: $(program_NAME)
	./$(program_NAME) test.txt > testoutput.out

ifneq "$(MAKECMDGOALS)" "clean"
# Include the list of dependancies generated for each object file
-include ${program_SRCS:.c=.d}
endif


# CC = gcc

# CFLAGS = -Wall

# # For libraries
# LDFLAGS = 
# LIBS = 

# OBJFILES = files/main.o files/interface.o

# # Name of program
# TARGET = pwgen

# all : $(TARGET)

# $(TARGET) : $(OBJFILES)
# 	$(CC) $(CFLAGS) $(LIBS) -o executables/$(TARGET) $(OBJFILES) $(LDFLAGS)

# clean :
# 	rm -f $(OBJFILES)

# #program:
# #	clear
# #	gcc files/*.c -o executables/progr
# #	./executables/progr
