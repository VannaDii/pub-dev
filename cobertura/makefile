ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get

all: clean deps

clean:
	rm -rf .dart_tool doc .packages pubspec.lock

docs:
	dartdoc
