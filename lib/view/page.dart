// package
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// project
import 'package:flutter_example/main.dart';
import 'package:flutter_example/bloc/bloc.dart';
import 'package:flutter_example/view/page2.dart';
import 'package:flutter_example/view/page3.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

// class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DI 위젯으로 사용되어 블록의 단일 인스턴스가 하위 트리 내의 여러 위젯에 제공 될 수 있습니다.
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: BlocBuilder<CounterEvent, int>(
        bloc: _counterBloc,
        builder: (BuildContext context, int count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$count',
                  style: TextStyle(fontSize: 24.0),
                ),
                RaisedButton(
                  child: Text('counter2로'),
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) => 
                      // CounterPageTwo()
                      CounterPageThree()
                  )),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.increment);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.decrement);
              },
            ),
          ),          
        ],
      ),
    );
  }
}