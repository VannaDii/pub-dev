.SILENT:

.PHONY: all

null	:=
slash	:= ${null}/${null}
space	:= ${null} ${null}
delim := ${null}', '${null}

all:
	echo "You probably meant to run make in one of these folders '$(subst ${slash},${null},$(subst ${space},${delim},$(shell ls -d */)))'"
