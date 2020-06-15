import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("hoge")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("hoge")
        )
      ]
    );
  }
}
