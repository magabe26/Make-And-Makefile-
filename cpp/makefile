#################SETUP#####################

#Current compiler to use
CC = g++

#Compiler flags while building object files
CFLAGS = -Wall

#The build directory
BUILD_DIR = build

#The name of the executable
PROGRAM_NAME = hello

#Source file extension
SFILE_EXTENSION = cpp

#Specifies a list of directories that make should search for both prerequisites and targets of rules
#Directory names are separated by colons(semi-colons on Windows) or blanks.
#The order in which directories are listed is the order followed by make in its search
VPATH = .

###########################################

OBJS := $(addprefix $(BUILD_DIR)/,$(patsubst %.$(SFILE_EXTENSION),%.o,$(wildcard *.$(SFILE_EXTENSION))))
EXECUTABLE = $(BUILD_DIR)/$(PROGRAM_NAME)
HEADERS := $(wildcard *.h)

#Linking .o files to create the executable
$(PROGRAM_NAME): $(OBJS)
	$(CC) $(CFLAGS) $? -o $(BUILD_DIR)/$@

#Static Pattern Rule to build .o objects
#Build individual (.o) object files [preferring explicit rule]
$(OBJS): $(BUILD_DIR)/%.o: %.$(SFILE_EXTENSION) | $(HEADERS) $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) $< -o $@
	
#Create the build directory
$(BUILD_DIR):
	mkdir $(BUILD_DIR)

.PHONY : run objects remove_objects executable remove_executable  clean

#Build and run the executable
run: | executable
	./$(EXECUTABLE)	

#Build object files
objects: | $(OBJS)

#Remove .o files
remove_objects: 
	rm -f $(OBJS)

#Create the executable file and remove .o files
executable: $(PROGRAM_NAME) | remove_objects

#Remove the executable file
remove_executable:
	rm -f $(EXECUTABLE)

#Remove the build directory and everything in it
clean:	
	rm -rf $(BUILD_DIR)

