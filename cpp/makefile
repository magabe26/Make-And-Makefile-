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
.PHONY : remove_objs
.PHONY : compile
.PHONY : run

run:
	$(BUILD_DIR)/main.o	

#compile the object to .exe and remoe .o files
compile: $(PROGRAM_NAME) | remove_objs

remove_objs: 
	rm -f $(addprefix $(BUILD_DIR)/,$(OBJS))

remove_executable:
	rm -f $(BUILD_DIR)/$(PROGRAM_NAME)

clean:	
	rm -rf $(BUILD_DIR)

