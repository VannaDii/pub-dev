import 'package:geography/earth.dart';

main() {
  var a = Earth().search("Texas, Austin").first;
  var s = Earth().search("Texas, San Antonio").first;
  var d = a.distanceFrom(s);

  print("> From ${a.name} to ${s.name} is ${d.toStringAsFixed(2)} meters");

  /**
   * Prints:
   *
   * > From Austin to San Antonio is 118570.24 meters
   * Exited
   */
}
