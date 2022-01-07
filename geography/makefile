ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get
	dart pub global activate coverage
	dart pub global activate cobertura


runner:
	dart run build_runner build --delete-conflicting-outputs

tests: deps runner
	dart run test --coverage="coverage" --chain-stack-traces
	dart pub global run coverage:format_coverage --packages=.packages --report-on=lib --lcov -o ./coverage/lcov.info -i ./coverage
	genhtml -o ./coverage/report ./coverage/lcov.info
	cobertura show -i ./coverage/lcov.info

generate:
	dart run :composer

all: tests
	dart fix --apply
	dart format . >/dev/null

clean:
	rm -rf .dart_tool doc .packages pubspec.lock

docs:
	dartdoc
