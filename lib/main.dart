import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:memoapp2/Controllers/footer_state.dart';

import 'views/partials/header.dart';
import 'views/partials/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<FooterStateNotifier, FooterState>(
        create: (_) => FooterStateNotifier(),
        child: Scaffold(
          appBar: Header(),
          body: Text("オラオラオラオラ"),
          bottomNavigationBar: Footer(),
        ),
      )
    );
  }
}
