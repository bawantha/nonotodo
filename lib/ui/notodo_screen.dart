import 'package:flutter/material.dart';

class NotoDoScreen extends StatefulWidget {
  @override
  _NotoDoScreenState createState() => _NotoDoScreenState();
}

class _NotoDoScreenState extends State<NotoDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _showFromDialog,
        tooltip: 'Add Item',
        backgroundColor: Colors.redAccent,
        child: ListTile(
          title: Icon(Icons.add),
        ),
      ),
    );
  }

  void _showFromDialog() {}
}
