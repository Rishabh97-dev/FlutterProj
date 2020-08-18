import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Columns:'),
      ),
      body: Column(
        children: [
          Text('Buttons: '),
          RaisedButton(
            child: Text('Button 1'),
            onPressed: null,
          ),
          RaisedButton(
            onPressed: null,
            child: Text('Button 2'),
          ),
        ],
      ),
    );
  }
}
