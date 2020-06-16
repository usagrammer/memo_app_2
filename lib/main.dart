import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:memoapp2/Controllers/footer_state.dart';
import 'package:memoapp2/Controllers/posts_index_state.dart';

import 'views/partials/header.dart';
import 'views/partials/footer.dart';

import 'views/posts/index.dart';
import 'views/posts/new.dart';

import 'views/settings/index.dart';

void main() => runApp(Init());

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("<Init>");
    print(context);
    return MaterialApp(
        home: MultiProvider(
      providers: [
        StateNotifierProvider<FooterStateNotifier, FooterState>(
            create: (_) => FooterStateNotifier()),
        StateNotifierProvider<PostsIndexStateNotifier, PostsIndexState>(
            create: (_) => PostsIndexStateNotifier()),
      ],
      child: Base(),
    ));
  }
}

class Base extends StatelessWidget {
  var routes = [
    Index(),
    New(),
    SettingsIndex(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: IndexedStack(
        index: context.select<FooterState, int>((state) => state.selectedIndex),
        children: routes,
      ),
      bottomNavigationBar: Footer(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("new"),
        icon: Icon(Icons.add),
      ),
    );
  }
}
