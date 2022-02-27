import 'package:flutter/material.dart';
import 'package:state_class/Count.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Communication Widget")),
        body: Center(
            child: Count(
                countt: count,
                onCountSelected: () => print("Count Selected"),
                onCountChange: (int value) => setState(() => count += value))));
  }
}
