import 'package:flutter/material.dart';
import 'package:flutter_example/view/page.dart';

class CounterPageThree extends StatefulWidget {
  @override
  _CounterPageThreeState createState() => _CounterPageThreeState();
}

class _CounterPageThreeState extends State<CounterPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter3'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => CounterPage()));
          },
        ),
      ),
    );
  }
}