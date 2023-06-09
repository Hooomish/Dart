import 'dart:math';

//6
class Point{
  late double _x, _y, _z;
  //late Point coordinates;
  static var points = <Point>[];

  Point.coordinates(this._x, this._y, this._z); 

  factory Point(double coordinateX, double coordinateY, double coordinateZ) {
    if (points.where((element) => element._x == coordinateX && element._y == coordinateY && element._z == coordinateZ).isEmpty) {
      var newPoint = Point.coordinates(coordinateX, coordinateY, coordinateY);
      points.add(newPoint);
      return newPoint;
    } 
    else {
      return points.lastWhere((element) => element._x == coordinateX && element._y == coordinateY && element._z == coordinateZ);
    }
  }

  factory Point.coordinatesAtOne() {
    return Point(1,1,1);
  }

  double distanceTo(Point anotherPoint){
    var distanceBetweenX = _x - anotherPoint._x;
    var distanceBetweenY = _y - anotherPoint._y;
    var distanceBetweenZ = _z - anotherPoint._z;

    var distanceBetweenPoints = sqrt(distanceBetweenX*distanceBetweenX + distanceBetweenY*distanceBetweenY + distanceBetweenZ * distanceBetweenZ);

    return distanceBetweenPoints;
  }
}

