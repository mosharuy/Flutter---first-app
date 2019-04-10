import 'package:flutter/material.dart';

import 'package:blabla/textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Assignment',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter First Assignment',),
    );
  }
}


