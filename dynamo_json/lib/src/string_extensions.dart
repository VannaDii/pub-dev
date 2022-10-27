extension StringExtensions on String {
  /// Returns this [String] with the `\n` line terminator appended.
  String asLine([String eol = '']) => '${this}$eol\n';
}
