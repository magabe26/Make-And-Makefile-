BUILD_DIR = build
PROGRAM_NAME = hello
OBJS := $(patsubst %.cpp,%.o,$(wildcard *.cpp))
HEADERS := $(wildcard *.h)

$(PROGRAM_NAME): $(OBJS)
	g++ -o $(BUILD_DIR)/$@ $(addprefix $(BUILD_DIR)/,$?)

#using $(patsubst %.h, ,$?) to remoe header files
%.o: %.cpp $(HEADERS) | $(BUILD_DIR) 
	g++ -c $(patsubst %.h, ,$?) -o $(BUILD_DIR)/$@

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

.PHONY : clean
.PHONY : remove_objects
.PHONY : executable
.PHONY : run

run: | executable
	./$(BUILD_DIR)/$(PROGRAM_NAME)	

objects: | $(OBJS)

#compile the object to .exe and remoe .o files
executable: $(PROGRAM_NAME) | remove_objects

remove_objects: 
	rm -f $(addprefix $(BUILD_DIR)/,$(OBJS))

remove_executable:
	rm -f $(BUILD_DIR)/$(PROGRAM_NAME)

clean:	
	rm -rf $(BUILD_DIR)

