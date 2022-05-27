import "package:equatable/equatable.dart";

//This class allows for algorithms to be written independent of cartesion dimension of the space.
abstract class Point extends Equatable {
  final List<double> values;

  Point(this.values) {
    assert(isFinite(), "Invalid value [inifinity, or Nan] specified to Point");
  }

  int dimension() {
    return values.length;
  }

  bool isFinite() {
    for (var item in values) {
      if (!item.isFinite) {
        return false;
      }
    }
    return true;
  }

  @override
  List<Object> get props {
    return [values];
  }
}
