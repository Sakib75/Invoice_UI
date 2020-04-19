import 'package:flutter/material.dart';
import 'navbar.dart';
import 'TopBar.dart';
import 'TitleSearch.dart';
import 'components.dart';


const TextStyle ktitle = TextStyle(fontSize: 50);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child: Column(
            children: <Widget>[
              TopBar(),
              TitleSearch(),
              NavBar(),
              Expanded(
                child: Contents(),
              ),


            ],
          ),
        ),
        floatingActionButton: FancyFabb()

      ),
    );
  }
}



