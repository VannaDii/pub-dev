ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get

test: clean deps
	dart pub global activate coverage
	dart pub run test --coverage="coverage"

all: clean deps test
	dart run build_runner build --delete-conflicting-outputs
	dart run :composer
	dart run build_runner build --delete-conflicting-outputs

clean:
	rm -rf .dart_tool doc .packages pubspec.lock
	rm -rf lib/src/countries

doc:
	dartdoc
