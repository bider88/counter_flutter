import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final textStyle = TextStyle(fontSize: 25);
  final counter = 10;

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
              'Número de clics:',
              style: textStyle,
            ),
            Text(
              '$counter', 
              style: textStyle
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          print('Hola mundo!');
          // counter = counter + 1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
