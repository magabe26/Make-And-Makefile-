BUILD_DIR = build

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

%.o: %.cpp header.h
	mkdir ./$(BUILD_DIR)
	g++ -c main.cpp -o $(BUILD_DIR)/$@

#prevents make from getting confused by an actual file called clean
.PHONY : clean

clean:
	rm $(BUILD_DIR)/hello $(BUILD_DIR)/main.o
	rmdir $(BUILD_DIR)

