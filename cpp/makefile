BUILD_DIR = build

#compile target is the default goal,
#compile the object to hello.exe and remoe .o files
compile: hello | remove_objs

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

%.o: %.cpp header.h | $(BUILD_DIR) 
	g++ -c main.cpp -o $(BUILD_DIR)/$@

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

.PHONY : clean
.PHONY : remove_objs

remove_objs:
	rm  $(BUILD_DIR)/main.o

remove_executable:
	rm 	$(BUILD_DIR)/hello

clean:	| remove_executable
	rmdir $(BUILD_DIR)

