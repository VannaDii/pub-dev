ifndef VERBOSE
.SILENT:
endif

# Use the directory name for the distribution name
lib_name=$(shell basename $$(pwd))

clean:
	rm -rf .dart_tool doc .packages pubspec.lock

deps: clean
	dart pub get
	dart pub global activate pana
	dart pub global activate dartdoc
	dart pub global activate coverage
	dart pub global activate cobertura

runner:
	dart run build_runner build --delete-conflicting-outputs

tests: deps runner
	dart run test --coverage=coverage --chain-stack-traces
	dart pub global run coverage:format_coverage --report-on=lib --lcov -o ./coverage/lcov.info -i ./coverage
	genhtml -o ./coverage/report ./coverage/lcov.info
	cobertura show -i ./coverage/lcov.info

test:
	dart test --chain-stack-traces --coverage=coverage

all: tests
	dart fix --apply >>/dev/null
	dart format . >>/dev/null
	dart analyze --fatal-infos
	dart doc . 1>>/dev/null
	pana --no-warning . 1>pana.md 2>>/dev/null
