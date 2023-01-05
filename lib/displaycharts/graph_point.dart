import 'dart:math';
import 'package:collection/collection.dart';

class GraphPoint {
  final double x;
  final double y;

  GraphPoint({required this.x, required this.y});
}

List<GraphPoint> get pricePoints {
  final Random random = Random();
  final randomNumbers = <double>[];
  for (var i = 0; i <= 110; i++) {
    randomNumbers.add(random.nextDouble());
  }

  return randomNumbers
      .mapIndexed(
          (index, element) => GraphPoint(x: index.toDouble(), y: element))
      .toList();
}