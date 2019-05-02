//package
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//project
import 'package:flutter_example/bloc/bloc.dart';
import 'package:flutter_example/view/page.dart';

enum CounterEvent { increment, decrement }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
        bloc: _counterBloc,
        child: MaterialApp(
          title: 'Flutter Demo',
          home: CounterPage(),
          // BlocProvider 설정
      ),
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}