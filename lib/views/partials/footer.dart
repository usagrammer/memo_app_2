import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:memoapp2/Controllers/footer_state.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = context.select<FooterState, int>((state) => state.selectedIndex);
    print("<Footer>");
    print(context);
    print("</Footer>");
    return  BottomNavigationBar(
      currentIndex: _selectedIndex,
        onTap: (index) => context.read<FooterStateNotifier>().changeIndex(index),
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("x")
          ),
          BottomNavigationBarItem(
          icon: Icon
          (Icons.home),
            title: Text("hoge")
        )
      ]
    );
  }
}
