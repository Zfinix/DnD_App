import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'views/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dnd App',
      debugShowCheckedModeBanner: false,
      theme: themeData(context),
      home: Intro() ,
    );
  }
}

