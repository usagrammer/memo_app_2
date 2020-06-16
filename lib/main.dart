import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:memoapp2/Controllers/footer_state.dart';

import 'views/partials/header.dart';
import 'views/partials/footer.dart';

import 'views/posts/index.dart';
import 'views/posts/new.dart';

void main() => runApp(
    Init()
);

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("<Init>");
    print(context);
    return MaterialApp(
      home:  StateNotifierProvider<FooterStateNotifier, FooterState>(
        create: (_) => FooterStateNotifier(),
    child: Base(),)
    );
  }
  }

class Base extends StatelessWidget {
//  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var routes = [
    Index(),
    New(),
  ];

  @override
  Widget build(BuildContext context) {
    print("<Base>");
    print(context);
    print("</Base>");
    return Scaffold(
//      key: _scaffoldKey,
      appBar: Header(),
      body: IndexedStack(
        index: context.select<FooterState, int>((state) => state.selectedIndex),
        children: routes,
      ),
      bottomNavigationBar:   Footer(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("aaa"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
