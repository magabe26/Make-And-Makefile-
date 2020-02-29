#################SETUP#####################

#The build directory
BUILD_DIR = build

EXECUTABLE_NAME = hello

#The name of the executable
LIB_NAME = hello.dll

#The soname of the library
SO_NAME = hello.so.v1


#Specifies a list of directories that make should search for both prerequisites and targets of rules
#Directory names are separated by colons(semi-colons on Windows) or blanks.
#The order in which directories are listed is the order followed by make in its search
VPATH = .

###########################################


OBJS := $(patsubst %.cpp,%.o,$(wildcard *.cpp))
OBJS_PATHS = $(addprefix $(BUILD_DIR)/,$(OBJS))
EXECUTABLE_PATH = $(BUILD_DIR)/$(EXECUTABLE_NAME)
LIB_PATH = $(BUILD_DIR)/$(LIB_NAME)
HEADERS := $(wildcard *.h)

#$(EXECUTABLE_NAME): $(wildcard *.cpp) $(LIB_NAME)
#	gcc main.cpp $(LIB_PATH)

#Linking .o files to create the executable
$(LIB_NAME): $(OBJS)
	g++ -shared -fPIC -Wl,-soname,$(SO_NAME) -o $(BUILD_DIR)/$@ $(addprefix $(BUILD_DIR)/,$?) 

#Build individual (.o) object files [preferring explicit rule]
#Using $< to exclude header files instead of $(patsubst %.h,,$?) 
#The automatic variable ‘$<’ is just the first prerequisite whitch is %.cpp
#Generate position independent code using the -fPIC option,
#Object code intended for use in a shared library must be ‘position-independent
%.o: %.cpp $(HEADERS) | $(BUILD_DIR) 
	g++ -c -fPIC $< -o $(BUILD_DIR)/$@

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
	./$(EXECUTABLE_PATH)	

#Build object files
objects: | $(OBJS)

#Create the executable file and remove .o files
executable: $(EXECUTABLE_NAME) | remove_objects

#Remove .o files
remove_objects: 
	rm -f $(OBJS_PATHS)

#Remove the executable file
remove_executable:
	rm -f $(EXECUTABLE_PATH)

#Remove the build directory and everything in it
clean:	
	rm -rf $(BUILD_DIR)

