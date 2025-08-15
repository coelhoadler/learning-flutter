import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterStateless(count: 0),
            SizedBox(height: 20),
            CounterStateful(),
          ],
        ),
      ),
    );
  }
}

class CounterStateless extends StatelessWidget {
  final int count;

  CounterStateless({required this.count});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('StatelessWidget'),
          Text('Contagem:', style: TextStyle(fontSize: 26)),
          ElevatedButton(onPressed: () {}, child: Text('Incrementar')),
        ],
      ),
    );
  }
}

class CounterStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterStatefulState();
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('StatefulWidget'),
          Text('Contagem: $count', style: TextStyle(fontSize: 26)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('Incrementar'),
          ),
        ],
      ),
    );
  }
}
