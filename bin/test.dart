import "package:powerconfig/powerconfig.dart";

import "dart:io";

var testCfg = new File("./example/test.cfg");

main() {
  print(parsePowerConfig(testCfg.readAsStringSync()));
}