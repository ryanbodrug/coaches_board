import 'package:coaches_board/math/primitives/point.dart';
import 'package:coaches_board/math/primitives/point_2d.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Point shoud assert with nan values", (() {
    //Act
    expect(() {
      Point2D(double.nan, double.nan);
    }, throwsAssertionError);
  }));

  test("Point shoud assert with infitine values", (() {
    //Act
    expect(() {
      Point2D(double.infinity, double.infinity);
    }, throwsAssertionError);
  }));

  test("Point shoud assert with negative infinite values", (() {
    //Act
    expect(() {
      Point2D(double.negativeInfinity, double.negativeInfinity);
    }, throwsAssertionError);
  }));

  test("Point should return finite with finite values", (() {
    //Arrange
    final Point p = Point2D(1.0, 1.0);

    expect(p.isFinite(), true);
  }));

  test("Point should return 2D dimention with 2D Point", (() {
    //Arrange
    final Point p = Point2D(1.0, 1.0);

    expect(p.dimension(), 2);
  }));

  test("Points with the same value should be equal", (() {
    //Arrange
    final Point p1 = Point2D(1.0, 1.0);
    final Point p2 = Point2D(1.0, 1.0);

    expect(p1 == p2, true);
    expect(p1 != p2, false);
  }));

  test("Points with the same value should not be equal", (() {
    //Arrange
    final Point p1 = Point2D(1.0, 1.0);
    final Point p2 = Point2D(2.0, 1.0);

    expect(p1 == p2, false);
    expect(p1 != p2, true);
  }));

  test("Points with the same value should not be equal", (() {
    //Arrange
    final Point p1 = Point2D(1.0, 1.0);
    final Point p2 = Point2D(2.0, 1.0);

    expect(p1 == p2, false);
    expect(p1 != p2, true);
  }));

  test("Points should not be equal to differnt types", (() {
    //Arrange
    final Point p1 = Point2D(1.0, 1.0);
    TestDuckTypePoint p2 = const TestDuckTypePoint([1.0, 1.0]);

    // ignore: unrelated_type_equality_checks
    expect(p1 == p2, false);
    // ignore: unrelated_type_equality_checks
    expect(p1 != p2, true);
  }));
}

class TestDuckTypePoint {
  final List<double> values;
  const TestDuckTypePoint(this.values);
}
