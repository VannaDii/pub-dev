.SILENT:

.PHONEY: all update

all: update

update:
	dart run build_runner build -d
	dart fix --apply
	dart format .
	dart analyze --fatal-infos
