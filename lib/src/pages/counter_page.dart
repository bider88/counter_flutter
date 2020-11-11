import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  // @override
  // createState() => _CounterPageState();
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final _textStyle = TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Número de taps Stateful:',
              style: _textStyle,
            ),
            Text(
              '$_counter', 
              style: _textStyle
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(children: [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.restore_rounded), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.exposure_minus_1), onPressed: _minusOne),
        SizedBox(width: 10.0),
        FloatingActionButton(child: Icon(Icons.exposure_plus_1), onPressed: _addOne)
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _addOne() => setState(() => _counter++);
  
  void _minusOne() => setState(() => _counter--);
  
  void _reset() => setState(() => _counter = 0);
}