## Operation Examples

General operation can be discovered thru help, like:

```shell
❯ cobertura help

Converts LCOV to Cobertura format; the ideal format for GitHub and Azure DevOps.

Usage: cobertura <command> [arguments]

Global options:
-h, --help    Print this usage information.

Available commands:
  convert   Converts LCOV data files to Cobertura format
  show      Writes a console formatted report from LCOV to stdout

Run "cobertura help <command>" for more information about a command.
```

```shell
❯ cobertura help convert

Converts LCOV data files to Cobertura format

Usage: cobertura convert [arguments]
-h, --help       Print this usage information.
-i, --input      The input file to process.
                 (defaults to "coverage/lcov.info")
-o, --output     The output file to produce.
                 (defaults to "coverage/cobertura.xml")
-p, --pubspec    The pubspec.yaml file path of the analyzed package.
                 (defaults to "pubspec.yaml")
-n, --name       The name of the analyzed package. If provided, overrides the version found in pubspec.yaml
                 (defaults to pubspec['name'])
-v, --version    The version of the analyzed package. If provided, overrides the version found in pubspec.yaml
                 (defaults to pubspec['version'])

Run "cobertura help" to see global options.
```

```shell
❯ cobertura help show

Writes a console formatted report from LCOV to stdout

Usage: cobertura show [arguments]
-h, --help        Print this usage information.
-i, --input       The input file to display.
                  (defaults to "coverage/lcov.info")
-c, --no-color    Disable colorization of console output.

Run "cobertura help" to see global options.
```
