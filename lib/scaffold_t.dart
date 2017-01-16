import 'package:flutter/material.dart';

void main() {
  Matrix4 mat = new Matrix4.rotationZ(30.0);
  var b = new Block(children:<Widget>[
    new DrawerHeader(child: new Text("--A")),
    new DrawerItem(child:new Text("--1")),
    new DrawerItem(child:new Text("--2")),
    new DrawerItem(child:new Text("--3")),
    new DrawerItem(child:new Text("--4")),
    new DrawerItem(child:new Text("--5")),
  ]);
  var s = new Scaffold(
    drawer:  new Drawer(child:b),
    appBar: new AppBar(
      title: new Text("title"),
    ),
    body: new Center(
      child: new Text(
        'body',
      ),
    ),
    floatingActionButton: new FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: new Icon(Icons.add),
    ),
  );
  var m = new MaterialApp(
    title: 'Flutter Demo',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: s,
  );
  runApp(m);
}