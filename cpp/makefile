BUILD_DIR = build

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

%.o: %.cpp header.h | $(BUILD_DIR) #order-only-prerequisites on left of | , that will enventualy call mkdir
	g++ -c main.cpp -o $(BUILD_DIR)/$@

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

#prevents make from getting confused by an actual file called clean
.PHONY : clean

clean:
	rm $(BUILD_DIR)/hello $(BUILD_DIR)/main.o
	rmdir $(BUILD_DIR)

