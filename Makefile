FILES   =
HEADERS =
CC      = gcc
FLAGS   =
NAME    = zest

PATHVAR = /usr/local/bin/

build: $(HEADERS) $(FILES)
	[ -d build ] || mkdir -p build

	$(CC) $(FLAGS) $(FILES) -o build/$(NAME)

run: build
	./build/$(NAME)

install: build
	sudo cp build/$(NAME) $(PATHVAR)$(NAME)

clear:
	rm -rf build
