ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get

tests: clean deps
	dart pub global activate coverage
	dart run test --coverage="coverage"

all: clean deps test
	dart run build_runner build --delete-conflicting-outputs
	dart run :composer -q
	dart run build_runner build --delete-conflicting-outputs

clean:
	rm -rf .dart_tool doc .packages pubspec.lock
	rm -rf lib/src/countries

docs:
	dartdoc
