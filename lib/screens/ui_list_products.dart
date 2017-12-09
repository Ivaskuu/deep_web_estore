import 'package:flutter/material.dart';

class UIListProducts extends StatefulWidget
{
  final Widget appBar = new AppBar
  (
    title: new Text("Products list"),
  );

  @override
  _UIListProductsState createState() => new _UIListProductsState();
}

class _UIListProductsState extends State<UIListProducts>
{
  @override
  Widget build(BuildContext context)
  {
    return new Center(child: new Text("Ciao"));
  }
}