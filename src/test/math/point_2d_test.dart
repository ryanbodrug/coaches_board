import 'package:coaches_board/math/primitives/point_2d.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Point2D should return values specified in constructor", (() {
    //Arrange
    final p = Point2D(1.0, 2.0);

    //Act
    final x = p.x;
    final y = p.y;

    //Assert
    expect(x, equals(1.0));
    expect(y, equals(2.0));
  }));

  test("Point2D should return values modified via setters", (() {
    //Arrange
    final p = Point2D(1.0, 2.0);

    //Act
    p.x = 10.0;
    p.y = 20.0;

    //Assert
    expect(p.x, equals(10.0));
    expect(p.y, equals(20.0));
  }));
}
