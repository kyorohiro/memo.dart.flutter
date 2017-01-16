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
      actions: [new Text("xxx1"),new Text("xxx3")],
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(config.title),
      ),
      body: new Center(
        child: new Text(
          'Button tapped $_counter time${ _counter == 1 ? '' : 's' }.',
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

