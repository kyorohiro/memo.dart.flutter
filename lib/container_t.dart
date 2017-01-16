import 'package:flutter/material.dart';

void main() {
  Matrix4 mat = new Matrix4.rotationZ(30.0);
  runApp(new Center(child: new Container(
    width: 100.0,
    height: 100.0,
    transform:mat,
    decoration: new BoxDecoration(backgroundColor: const Color(0xff7c94b6)),
  )));
}
