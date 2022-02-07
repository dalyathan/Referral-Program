import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class VectorUtil {
  final Size frame;

  VectorUtil(this.frame);
  Offset reflectYAxis(Offset dartianOffset) {
    Offset cartesianOffset = toCartesianCoordinate(dartianOffset);
    Offset cartesianValue = Offset(-cartesianOffset.dx, cartesianOffset.dy);
    return toDartianCoordinate(cartesianValue);
  }

  Offset reflectXAxis(Offset dartianOffset) {
    Offset cartesianOffset = toCartesianCoordinate(dartianOffset);
    Offset cartesianValue = Offset(cartesianOffset.dx, -cartesianOffset.dy);
    return toDartianCoordinate(cartesianValue);
  }

  Offset reflectYEqualsX(Offset dartianOffset) {
    Offset cartesianOffset = toCartesianCoordinate(dartianOffset);
    Offset cartesianValue = Offset(cartesianOffset.dy, cartesianOffset.dx);
    return toDartianCoordinate(cartesianValue);
  }

  Offset translate(Offset point, Offset delta) =>
      Offset(point.dx + delta.dx, point.dy + delta.dy);

  Offset rotate(Offset dartianOffset, double counterClockwiseInRadians) {
    Offset cartesianOffset = toCartesianCoordinate(dartianOffset);
    Offset cartesianValue = Offset(
        cartesianOffset.dx * cos(counterClockwiseInRadians) -
            cartesianOffset.dy * sin(counterClockwiseInRadians),
        cartesianOffset.dx * sin(counterClockwiseInRadians) +
            cartesianOffset.dy * cos(counterClockwiseInRadians));
    return toDartianCoordinate(cartesianValue);
  }

  Path rotatePath(Path oldPath, double counterClockwiseInRadians) {
    Path cartesianPath = toCartesianPath(oldPath);
    Path rotatedCartesianPath = cartesianPath
        .transform(Matrix4.rotationZ(counterClockwiseInRadians).storage);
    Path dartianPath = toDartianPath(rotatedCartesianPath);
    return dartianPath;
  }

  Path toCartesianPath(Path dartianPath) =>
      dartianPath.shift(Offset(-frame.width * 0.5, -frame.height * 0.5));

  Path toDartianPath(Path cartesianPath) =>
      cartesianPath.shift(Offset(frame.width * 0.5, frame.height * 0.5));

  List<Offset> rotatePolygon(
          List<Offset> dartianOffsets, double counterClockwiseInRadians) =>
      dartianOffsets
          .map((offset) => rotate(offset, counterClockwiseInRadians))
          .toList();

  Offset toDartianCoordinate(Offset cartesianPoint) => Offset(
      cartesianPoint.dx + frame.width * 0.5,
      frame.height * 0.5 - cartesianPoint.dy);

  Offset toCartesianCoordinate(Offset dartianPoint) => Offset(
      dartianPoint.dx - frame.width * 0.5,
      frame.height * 0.5 - dartianPoint.dy);
}
