

default: all

all: build test

.PHONY: clean
clean:
	rm -fr build

build: lua
	mkdir build
	





lua: lua/.git #OFF# lua_update

# /!\ this repo must make use of submodules
#     please read https://git-scm.com/book/en/v2/Git-Tools-Submodules
lua/.git:
	$(info Initing submodule)
	git submodule init

# TODO: is this correct? Can we watch a file to not over pull this?
#.PHONY: lua_update
#lua_update:
#	$(info Updating lua repo)
#	git submodule update
