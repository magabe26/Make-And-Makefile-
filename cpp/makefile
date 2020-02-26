BUILD_DIR = build

hello: main.o
	g++ -o $(BUILD_DIR)/$@ $(BUILD_DIR)/$?

main.o: main.cpp header.h
	mkdir ./$(BUILD_DIR)
	gcc -c main.cpp -o $(BUILD_DIR)/$@

.PHONY = clean

clean:
	rm $(BUILD_DIR)/main.o