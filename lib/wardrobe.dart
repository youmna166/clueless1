import 'package:cluless1/filters.dart';
import 'package:cluless1/load_screen.dart';
import 'package:flutter/material.dart';
import 'package:cluless1/icons.dart';

class WardrobePage extends StatefulWidget {
  @override
  _WardrobePageState createState() => _WardrobePageState();
}

class _WardrobePageState extends State<WardrobePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFf4b75c),
      body: Container(
          child: Column(children: <Widget>[
            FlatButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FiltersPage()),
                      )
                    },
                textColor: Colors.white,
                color: Color(0xFFd9d9d9),
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                splashColor: Colors.grey,
                child: Text('Filters',
                    style: TextStyle(
                        fontFamily: 'Moontime',
                        fontSize: 50,
                        color: Colors.black))),
            Container(),
            Container(
                height: 500,
                child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(50, (index) {
                      return Container(
                        child: Card(
                            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                            color: Colors.white,
                            child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(icon_choices[3].icon,
                                      color: Colors.grey[200], size: 30),
                                  onPressed: () => {},
                                  splashColor: Colors.grey,
                                ),
                              ],
                            )),
                      );
                    }))),
          ]),
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          padding: EdgeInsets.only(top: 24),
          color: Color(0xFFf0d0f1)),
      appBar: new AppBar(
          backgroundColor: Color(0xFF190758),
          title: const Text('Wardrobe',
              style: TextStyle(
                  fontFamily: 'Bukhari', fontSize: 50, color: Colors.white)),
          leading: IconButton(
              icon: Icon(icon_choices[0].icon, color: Colors.white, size: 40),
              onPressed: () => {Navigator.pop(context)},
              splashColor: Colors.grey),
          actions: <Widget>[
            IconButton(
              icon: Icon(icon_choices[1].icon, color: Colors.white, size: 40),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoadScreen()),
                )
              },
            )
          ]),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xFF190758),
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 75,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      iconSize: 40.0,
                      // padding: EdgeInsets.only(left: 10),
                      icon: Icon(icon_choices[2].icon,
                          color: Colors.white, size: 60),
                      onPressed: () => {},
                      splashColor: Colors.grey,
                    ),
                    IconButton(
                        iconSize: 40.0,
                        // padding: EdgeInsets.only(right: 0),
                        icon: Icon(icon_choices[3].icon,
                            color: Colors.white, size: 50),
                        onPressed: () => {},
                        splashColor: Colors.grey)
                  ]))),
    ));
  }
}
