import 'package:flutter/material.dart';

// タブで移動するページの作成
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Page1")
      ),
    );
  }
}
