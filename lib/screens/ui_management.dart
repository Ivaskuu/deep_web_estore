import 'package:flutter/material.dart';

class UIManagement extends StatefulWidget
{
  final Widget appBar = new PreferredSize
  (
    preferredSize: new Size.fromHeight(220.0),
    child: new Stack
    (
      children: <Widget>
      [
        new Container
        (
          decoration: new BoxDecoration
          (
            image: new DecorationImage
            (
              image: new AssetImage("res/hacker.jpg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black87, BlendMode.luminosity)
            )
          )
        ),
        new Align
        (
          alignment: FractionalOffset.topCenter,
          child: new AppBar
          (
            leading: new Icon(Icons.menu, color: Colors.white),
            //title: new Text("Silk Road 3.0", style: new TextStyle(color: Colors.white)),
            backgroundColor: Colors.transparent,
          ),
        ),
        new Container
        (
          margin: new EdgeInsets.only(bottom: 12.0),
          child: new Align
          (
            alignment: FractionalOffset.bottomCenter,
            child: new Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new Column
                (
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    new Text("Ranking", style: new TextStyle(color: Colors.white)),
                    new Text("#7", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28.0)),
                  ],
                ),
                new Column
                (
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    new Text("Ranking", style: new TextStyle(color: Colors.white)),
                    new Text("#7", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28.0)),
                  ],
                ),
                new Column
                (
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    new Text("Ranking", style: new TextStyle(color: Colors.white)),
                    new Text("#7", style: new TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28.0)),
                  ],
                ),
              ],
            )
          ),
        ),
        new Container
        (
          margin: new EdgeInsets.only(bottom: 32.0),
          child: new Align
          (
            alignment: FractionalOffset.center,
            child: new Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                new Text("Silk Road 3.0", style: new TextStyle(color: Colors.white)),
                new Container
                (
                  margin: new EdgeInsets.only(top: 16.0),
                  child: new CircleAvatar(backgroundColor: Colors.white, child: new Icon(Icons.all_inclusive, color: Colors.black)),
                )
              ],
            ),
          ),
        )
      ],
    ),
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
          twoHalfTiles
          (
            Icons.monetization_on, "Income", new Text("2.0539 B", style: Theme.of(context).textTheme.title.copyWith(color: Colors.green, fontSize: 32.0)),
            Icons.monetization_on, "Income", new Text("2.0539 B", style: Theme.of(context).textTheme.title.copyWith(color: Colors.green, fontSize: 32.0)),
            onClick1: null, onClick2: null
          ),
          fullTile(),
          fullTile()
        ],
      ),
    );
  }

  Widget fullTile()
  {
    return new SizedBox.fromSize
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
    );
  }

  Widget twoHalfTiles(IconData icon1, String title1, Widget content1, IconData icon2, String title2, Widget content2, {VoidCallback onClick1, VoidCallback onClick2})
  {
    return new Row
    (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>
      [
        halfTile(Icons.monetization_on, "Income", new Text("2.0539 B", style: Theme.of(context).textTheme.title.copyWith(color: Colors.green, fontSize: 32.0)), onClick: null),
        halfTile(Icons.monetization_on, "Income", new CircularProgressIndicator(value: 15.0), onClick: null),
      ],
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
}