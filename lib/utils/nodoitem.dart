import 'package:flutter/material.dart';

class NoDoItem extends StatelessWidget {
  String _itemName;
  String _dateCreated;
  int _id;

  NoDoItem(this._itemName, this._dateCreated);

  NoDoItem.map(dynamic obj) {
    this._itemName = obj['itemname'];
    this._dateCreated = obj['date'];
    this._id = obj['id'];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['itemname'] = this._itemName;
    map['date'] = this._dateCreated;
    if (_id != null) {
      map['itemname'] = this._itemName;
    }
    return map;
  }

  NoDoItem.fromMap(Map<String, dynamic> map) {
    this._itemName = map['itemname'];
    this._dateCreated = map['date'];

    this._id = map['id'];
  }

  String get itemName => _itemName;

  String get dateCreated => _dateCreated;

  int get id => _id;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _itemName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.9,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(_dateCreated,style: TextStyle(
                  fontSize: 13.5,
                  fontStyle: FontStyle.italic
                ),),
              )

            ]));
  }
}
