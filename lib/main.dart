import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll da dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDieNumber;
    leftDieNumber = 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDieNumber.png'),
              onPressed: () {
                print('You pressed the left die');
                leftDieNumber = leftDieNumber + 1;
                print(leftDieNumber);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice4.png'),
              onPressed: () {
                print('You pressed the right die');
              },
            ),
          ),
        ],
      ),
    );
  }
}
