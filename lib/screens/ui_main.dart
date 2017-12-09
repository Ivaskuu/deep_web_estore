import 'package:flutter/material.dart';
import 'ui_management.dart';
import 'ui_list_products.dart';

class UIMain extends StatefulWidget
{
  @override
  _UIMainState createState() => new _UIMainState();
}

List<Widget> _screens =
[
  new UIListProducts(),
  new UIManagement()
];
List<Widget> _appBars =
[
  new UIListProducts().appBar,
  new UIManagement().appBar
];
int _actualScreen = 0;

class _UIMainState extends State<UIMain>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      appBar: _appBars[_actualScreen],
      body: _screens[_actualScreen],
      drawer: navigationDrawer()
    );
  }

  Widget navigationDrawer()
  {
    return new Drawer
    (
      child: new ListView
      (
        children: <Widget>
        [
          new UIManagement().appBar,
          new FlatButton
          (
            onPressed: () { Navigator.pop(context); setState(() => _actualScreen = 0); },
            child: new ListTile
            (
              leading: new Icon(Icons.list),
              title: new Row
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  new Text("Products list"),
                  new Container
                  (
                    margin: new EdgeInsets.only(left: 8.0),
                    child: new Chip(label: new Text("36"))
                  )
                ]
              )
            ),
          ),
          new FlatButton
          (
            onPressed: () { Navigator.pop(context); setState(() => _actualScreen = 1); },
            child: new ListTile
            (
              leading: new Icon(Icons.web),
              title: new Text("Website management"),
            ),
          ),
          new FlatButton
          (
            onPressed: () => null,
            child: new ListTile
            (
              leading: new Icon(Icons.settings),
              title: new Text("Settings"),
            ),
          ),
          new Container
          (
            margin: new EdgeInsets.only(top: 16.0, left: 72.0, right: 72.0),
            child: new FlatButton
            (
              onPressed: () => null,
              child: new ListTile
              (
                title: new Text("LOGOUT", style: new TextStyle(color: Colors.blueAccent)),
                trailing: new Icon(Icons.exit_to_app, color: Colors.blueAccent),
              )
            )
          )
        ],
      )
    );
  }
}