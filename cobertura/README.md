A sample command-line application with an entrypoint in `bin/`, library code in `lib/`, and example unit test in `test/`.

## Manual Validation

Need to see the proof yourself? An easy way to manually validate the conversion results is:

```sh
# Install pycobertura
pip install pycobertura

# Mode to the directory containing lcov.info
cd <coverage directory>

# Run the conversion
dart run cobertura:cobertura # [plus any options and args]

# Display conversion results in console
pycobertura show cobertura.xml;

# Convert to single-file HTML
pycobertura show --format html --output coverage.html cobertura.xml

# Open the HTML version in the default browser
open coverage.html
```
