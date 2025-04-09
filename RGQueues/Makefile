CC=g++
STD=c++11

build/%.o: src/%.cpp
	@mkdir -p build
	@$(CC) -MM -MT $@ $< > build/$*.d
	$(CC) -c -o $@ $< -std=$(STD)

build/test_queue: build/TEST_PEAR_QUEUES.o
	$(CC) -o $@ $^ -std=$(STD)

-include build/*.d

.PHONY: test clean

test: build/TEST_PEAR_QUEUES
	./build/TEST_PEAR_QUEUES

clean:
	rm -rf build