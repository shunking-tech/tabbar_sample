import 'package:flutter/material.dart';
import 'package:sample_app/pages/page1.dart';
import 'package:sample_app/pages/page2.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// "with SingleTickerProviderStateMixin"を追記
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  // Tabの配列を作成
  List<Widget> _tab = [
    Tab(child: Text("Page1"),),
    Tab(child: Text("Page2"),),
  ];

  // タブの中身として表示するPageの配列を作成
  List<Widget> _buildTabPages() {
    return [
      Page1(),  // page1.dart
      Page2(),  // page2.dart
    ];
  }

  // コントローラーの作成
  TabController _controller;

  @override

  // コントローラーの設定
  void initState() {
    super.initState();
    _controller = TabController(length: _tab.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("sample"),
          bottom: TabBar(
            controller: _controller,  // コントローラーをセット
            tabs: _tab,   // タブ部分の中身
            labelColor: Colors.black,   // 選択されているタブの文字色
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.white,   // 選択されていないタブの文字色
          ),
        ),
        body: TabBarView(
          controller: _controller,  // コントローラーをセット
          children: _buildTabPages(),   // タブの中身として表示するPageの配列をセット
        ),
      ),
    );
  }
}
