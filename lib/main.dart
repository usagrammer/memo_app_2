import 'package:flutter/material.dart';

import 'views/partials/header.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        body: Text("オラオラオラオラ"),
      ),
    );
  }
}
