import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlipCard',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FlipCard'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _storeelement(),
                _storeelement(),
                _storeelement(),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _storeelement(),
                _storeelement(),
                _storeelement(),

              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _storeelement(),
                _storeelement(),
                _storeelement(),
              ],
            ),
          ],
        )));
  }

  _storeelement() {
    return GestureDetector(
      onTap: () {
        print('button tapped');
        _display();
      },
      child: Container(
        width: 120.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, border: Border.all(color: Colors.black)),
        child: Center(
          child: Text('X'),


        ),
      ),
    );
  }
  _display()
  {
    var arr=[1,2,3,4,5,6,7,8,9];
    var arr1=[9,8,7,6,5,4,3,2,1];
    for(int i=0;i<arr.length;i++)
      {
        arr1[i]=arr[i];
       return print('$arr1[i]');
      }
  }
}
