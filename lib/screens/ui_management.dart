import 'package:flutter/material.dart';

class UIManagement extends StatefulWidget
{
  Widget appBar = new AppBar
  (
    title: new Text("E-store management"),
  );

  @override
  _UIManagementState createState() => new _UIManagementState();
}

class _UIManagementState extends State<UIManagement>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      body: new ListView
      (
        children: <Widget>
        [
          new SizedBox.fromSize
          (
            size: new Size.fromHeight(100.0),
            child: new Card
            (
              child: new InkWell
              (
                onTap: () => null,
                child: new Container
                (
                  padding: new EdgeInsets.all(16.0),
                  child: new Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      new Text("Silk Road 3.0", style: Theme.of(context).textTheme.title.copyWith(fontSize: 28.0)),
                      new CircleAvatar(child: new Icon(Icons.all_inclusive))
                    ],
                  ),
                )
              ),
            )
          ),
          new Row
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              halfTile(Icons.monetization_on, "Income", new Text("2.0539 B", style: Theme.of(context).textTheme.title.copyWith(color: Colors.green, fontSize: 26.0)), onClick: null),
              halfTile(Icons.monetization_on, "Income", new CircularProgressIndicator(value: 15.0), onClick: null),
            ],
          )
        ],
      ),
    );
  }

  Widget halfTile(IconData icon, String title, Widget content, {VoidCallback onClick})
  {
    return new Expanded
    (
      child: new Container
      (
        height: 200.0,
        child: new Card
        (
          child: new InkWell
          (
            onTap: () => onClick,
            child: new Column
            (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new ListTile
                (
                  leading: new Icon(icon),
                  title: new Text(title),
                ),
                new Expanded
                (
                  child: new Center(child: content),
                )
              ]
            ),
          )
        ),
      ),
    );
  }

  Widget fullTile()
  {
    
  }
}