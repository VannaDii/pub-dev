extension DynamicExtensions on Map<String, dynamic>? {
  T? takeOr<T>(String key, {T? fallback}) {
    final instance = this;
    if (instance == null) {
      return fallback;
    }

    final bool hasIt = instance.containsKey(key);
    final T? result = hasIt ? instance.remove(key) : fallback;
    return result;
  }
}
