/// The LVOC line data types
// ignore: constant_identifier_names
enum LcovDataType { TN, SF, FN, FNDA, FNF, FNH, BRDA, BRF, BRH, DA, LF, LH }

/// Maps a string [value] to an [Enum] value of [T] from the provided [values]
T enumFromString<T>(Iterable<T> values, String value) {
  return values.firstWhere((type) => type.toString().split(".").last == value);
}
