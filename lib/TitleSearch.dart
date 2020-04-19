import 'package:flutter/material.dart';
const TextStyle ktitle = TextStyle(fontSize: 50);
class TitleSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Invoices',style: ktitle ,),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

