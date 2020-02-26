BUILD_DIR = build

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

%.o: %.cpp header.h | $(BUILD_DIR) 
	g++ -c main.cpp -o $(BUILD_DIR)/$@

$(BUILD_DIR):
	mkdir $(BUILD_DIR)


.PHONY : clean
.PHONY : remove_objs
.PHONY : compile

#compile the object to hello.exe and remoe .o files
compile: hello | remove_objs

remove_objs:
	rm -f $(BUILD_DIR)/main.o

remove_executable:
	rm -f $(BUILD_DIR)/hello

clean:	| remove_executable remove_objs 
	rmdir $(BUILD_DIR)

