part of powerconfig;

Map<String, String> parsePowerConfig(String input) {
  Result result = new PowerConfigParser().parse(input);
  Map<String, String> config = {};
  List<Entry> entries = result.value[0] as List<Entry>;
  for (Entry entry in entries) {
    config[entry.key] = entry.value;
  }
  return config;
}