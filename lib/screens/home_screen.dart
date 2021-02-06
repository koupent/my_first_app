import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えて下さい。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                _textHeader,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: _textEditingController, //入力した文字を管理する
            ),
            Expanded(
              child: _imageWidget,
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => _onClick(), //TODO ボタンのクリック処理
                child: Text(
                  "押してね",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      //文字
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは！$inputTextさん";

      //画像
//      _imageWidget = Image.asset("assets/images/niwatorioyako.jpeg");
    _imageWidget = Image.network("https://data.ac-illust.com/data/thumbnails/65/65b9046124d9251a093cb5df709a6e2e_w.jpeg");
    });
  }
}
