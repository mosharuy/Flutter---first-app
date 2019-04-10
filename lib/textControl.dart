import 'package:flutter/material.dart';

import 'package:blabla/outputTexts.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void changeText() {
    setState(() {
      _counter = _counter < texts.length - 1 ? _counter + 1 : 0;
      initText = texts[_counter];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 75.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 30.0),
                    child: Text(
                      'Did you know?',
                      style: TextStyle(color: Colors.indigo, fontSize: 30.0),
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 30.0),
                  child: Text(
                    initText,
                    style: TextStyle(color: Colors.indigo, fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                RaisedButton(
                  elevation: 5.0,
                  color: Colors.indigo,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      child: Text(
                        'Change Fact',
                        style: TextStyle(color: Colors.white),
                      )),
                  onPressed: changeText,
                ),
              ],
            ),
          ),
        ));
  }
}
