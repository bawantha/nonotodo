import 'package:flutter/material.dart';
import 'package:nonotodo/ui/home.dart';

void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'No to do',
      home: Home(),
    );
  }
}
