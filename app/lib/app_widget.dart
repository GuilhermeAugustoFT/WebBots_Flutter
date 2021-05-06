import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
