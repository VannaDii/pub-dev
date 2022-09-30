ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

deps: clean
	dart pub get -C dynamo_annotation
	dart pub get -C dynamo_serializable
	dart pub get -C shared_test
	dart pub get -C example
	dart pub global activate coverage
	dart pub global activate cobertura

tests: deps
	cd dynamo_serializable && dart run test --coverage="coverage" --chain-stack-traces
	cd dynamo_serializable && dart pub global run coverage:format_coverage --packages=.packages --report-on=lib --lcov -o ./coverage/lcov.info -i ./coverage
	cd dynamo_serializable && genhtml -o ./coverage/report ./coverage/lcov.info
	cd dynamo_serializable && cobertura show -i ./coverage/lcov.info

	cd example && dart run test --coverage="coverage" --chain-stack-traces
	cd example && dart pub global run coverage:format_coverage --packages=.packages --report-on=lib --lcov -o ./coverage/lcov.info -i ./coverage
	cd example && genhtml -o ./coverage/report ./coverage/lcov.info
	cd example && cobertura show -i ./coverage/lcov.info

generate:
	dart run :composer

all: tests
	dart fix --apply >>/dev/null
	dart format . >>/dev/null
	dart analyze --fatal-infos

clean:
	rm -rf .dart_tool doc .packages pubspec.lock

docs:
	dartdoc
