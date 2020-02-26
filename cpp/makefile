BUILD_DIR = build
PROGRAM_NAME = hello

$(PROGRAM_NAME): main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

%.o: %.cpp header.h | $(BUILD_DIR) 
	g++ -c main.cpp -o $(BUILD_DIR)/$@

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
	rm -f $(BUILD_DIR)/main.o

remove_executable:
	rm -f $(BUILD_DIR)/$(PROGRAM_NAME)

clean:	
	rm -rf $(BUILD_DIR)

