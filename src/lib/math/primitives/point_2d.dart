import 'package:coaches_board/math/primitives/point.dart';

/// Represents a point in 2D Space on the X, Y plane.
class Point2D extends Point {
  Point2D(double x, double y) : super([x, y]);

  double get x {
    return values[0];
  }

  double get y {
    return values[1];
  }

  set x(double x) {
    values[0] = x;
  }

  set y(double y) {
    values[1] = y;
  }
}
