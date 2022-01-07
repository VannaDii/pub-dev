# Cobertura

A CLI for viewing `LCOV` files and converting them to `Cobertura` files, as preferred/required by GitHub and Azure DevOps.

## Installation

```shell
dart pub global activate cobertura
```

## Operation

[Check out the examples](example/example.md)

## Manual Validation

Need to see the proof yourself? An easy way to manually validate the conversion results is:

```sh
# Install pycobertura
pip install pycobertura

# Mode to the directory containing lcov.info
cd <coverage directory>

# Run the show command
cobertura show -i cobertura.xml

# Display conversion results in console
pycobertura show cobertura.xml
```

You should not notice any differences in the data, the formatting, however, might be a bit different 😉
