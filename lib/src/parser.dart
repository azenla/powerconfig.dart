part of powerconfig;

class PowerConfigParser extends CompositeParser {

  @override
  void initialize() {
    _grammar();
    _parser();
  }

  void _parser() {
    action("entry", (value) => new Entry(value[0], value[2]));
  }

  void _grammar() {
    def("anything", letter() | digit() | whitespace());
    def("newline", Token.newlineParser());

    def("start", ref("config"));

    def("config", (ref("entry") | ref("comment")).separatedBy(ref("newline"), includeSeparators: false).star());

    def("comment", char('#').seq(ref("anything").plus().flatten()));

    def("key", letter().plus().flatten());
    def("value", letter().plus().flatten());

    def("entry", ref("key").seq(string(": ").trim()).seq(ref("value")));
  }
}