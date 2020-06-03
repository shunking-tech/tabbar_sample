import 'package:flutter/material.dart';

// タブで移動するページの作成
class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Page2")
      ),
    );
  }
}
