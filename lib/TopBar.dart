import 'package:flutter/material.dart';
class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('MENU'),
        Text('HELP')
      ],
    );
  }
}