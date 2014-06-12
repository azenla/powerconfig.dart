part of powerconfig;

class Entry {
  final String key;
  String value;

  Entry(this.key, [this.value]);

  @override
  String toString() => "${key}: ${value}";
}