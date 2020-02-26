BUILD_DIR = build

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

main.o: main.cpp header.h
	mkdir ./$(BUILD_DIR)
	gcc -c main.cpp -o $(BUILD_DIR)/$@


#prevents make from getting confused by an actual file called clean
.PHONY : clean

clean:
	rm $(BUILD_DIR)/hello $(BUILD_DIR)/main.o
	rmdir $(BUILD_DIR)