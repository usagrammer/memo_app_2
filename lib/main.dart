import 'package:flutter/material.dart';

import 'views/partials/header.dart';
import 'views/partials/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(),
        body: Text("オラオラオラオラ"),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
