import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:memoapp2/Controllers/footer_state.dart';

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("<New>");
    print(context);
    print("</New>");
    return Column(
      children: <Widget>[
        Container(height: 20.0, width: double.infinity, color: Colors.red),
        Container(height: 80.0, width: double.infinity, color: Colors.blue),
        Row(
          children: <Widget>[
            Container(height: 80.0, width: 40.0, color: Colors.green),
            Container(height: 80.0, width: 40.0, color: Colors.pink),
          ],
        )
      ],
    );
//    return Text(context.select<FooterState, int>((state) => state.count).toString());
  }
}
