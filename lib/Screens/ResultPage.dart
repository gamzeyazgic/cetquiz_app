import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sonuç '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              child: Image.asset(
                'assets/clap.jpg',
                width: 300,
                height: 300,
              ),
            ),
          ),
          Text(
            '  Tebrikler Puanınız',
            style: TextStyle(fontSize: 35),
          ),
          Text(
            '${widget.score}',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}