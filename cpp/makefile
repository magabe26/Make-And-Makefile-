#################SETUP#####################

#The build directory
BUILD_DIR = build

#The name of the executable
PROGRAM_NAME = hello

#Specifies a list of directories that make should search for both prerequisites and targets of rules
#Directory names are separated by colons(semi-colons on Windows) or blanks.
#The order in which directories are listed is the order followed by make in its search
VPATH = .

###########################################


OBJS := $(patsubst %.cpp,%.o,$(wildcard *.cpp))
HEADERS := $(wildcard *.h)

#Linking .o files to create the executable
$(PROGRAM_NAME): $(OBJS)
	g++ -o $(BUILD_DIR)/$@ $(addprefix $(BUILD_DIR)/,$?)

#Build individual (.o) object files [preferring explicit rule]
#Using $(patsubst %.h, ,$?) to remove header files
%.o: %.cpp $(HEADERS) | $(BUILD_DIR) 
	g++ -c $(patsubst %.h, ,$?) -o $(BUILD_DIR)/$@

#Create the build directory
$(BUILD_DIR):
	mkdir $(BUILD_DIR)

.PHONY : clean
.PHONY : remove_objects
.PHONY : executable
.PHONY : run
.PHONY : objects

#Build and run the executable
run: | executable
	./$(BUILD_DIR)/$(PROGRAM_NAME)	

#Build object files
objects: | $(OBJS)

#Create the executable file and remove .o files
executable: $(PROGRAM_NAME) | remove_objects

#Remove .o files
remove_objects: 
	rm -f $(addprefix $(BUILD_DIR)/,$(OBJS))

#Remove the executable file
remove_executable:
	rm -f $(BUILD_DIR)/$(PROGRAM_NAME)

#Remove the build directory and everything in it
clean:	
	rm -rf $(BUILD_DIR)

