ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get

tests: clean deps generate
	dart pub global activate coverage
	dart run test --coverage="coverage" --chain-stack-traces
	dart pub global run coverage:format_coverage --packages=.packages --report-on=lib --lcov -o ./coverage/lcov.info -i ./coverage
	genhtml -o ./coverage/report ./coverage/lcov.info

generate:
	# dart run :composer -q
	# dart run build_runner build --delete-conflicting-outputs

all: clean deps test
	dart run build_runner build --delete-conflicting-outputs

clean:
	rm -rf .dart_tool doc .packages pubspec.lock

docs:
	dartdoc
