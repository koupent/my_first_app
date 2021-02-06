import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "初めてのアプリ",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,    //画面右上端に初期設定で配置されるバナーを削除
      home: HomeScreen(),
    );
  }
}
