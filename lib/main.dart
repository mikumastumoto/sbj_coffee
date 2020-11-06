import 'package:flutter/material.dart';
import 'package:sbj_coffee/components/like_page.dart';
import 'package:sbj_coffee/components/coffee_page.dart';

void main() {
  // 最初に表示するWidget
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 右上に表示される"debug"ラベルを消す
      debugShowCheckedModeBanner: false,
      // アプリ名
      title: 'Sbj1 App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // 最初の画面を表示
      home: HomePage(),
    );
  }
}

//最初の画面を表示する
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// リスト一覧画面用Widget
class _HomePageState extends State<HomePage> {
  // 表示中の Widget を取り出すための index としての int 型の mutable な stored property
  int _selectedIndex = 0;
  // 表示する Widget の一覧
  static List<Widget> _pageList = [
    CustomPage(title: 'Home'),
    CoffeePage(title: 'Coffee'),
    LikePage(title: 'Like'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            title: Text('Coffee'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Like'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

//アイコンをタップした時の処理
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// ナビゲーションバーをタップした時に切り替わるWidgetの定義
class CustomPage extends StatelessWidget {
  final String title;
  CustomPage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(title),
        ));
  }
}
