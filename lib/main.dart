import 'package:flutter/material.dart';

class Player {
  String name;
  String? nickname; // requried가 아닐 때

  //Player(this.name);
  //** important** 늘 아래처럼 named paremeter를 사용하자
  Player({required this.name});
}

void main() {
  var mus = Player(name: 'mus');

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp > google
    // 구글이 만들었기 때문에 MaterialApp이 더 좋을 수 밖에 없다..
    // 그래서 늘 MaterialApp을 선택
    // CupertinoApp > iOs

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter!'),
          centerTitle: false,
          elevation: 0,
        ),
        body: Center(
          child: Text(
            'Hello\nworld!',
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
