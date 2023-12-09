SRC=$(wildcard ./src/*.c)
CLFAGS = -Wall

.PHONY: clean

clean:
	rm -rf ./export

build:
	mkdir ./export ./export/lib ./export/include
	cp ./src/*.h ./export/include/
	gcc $(CLFLAGS) -shared -o ./export/lib/blib.so -fPIC $(SRC)
