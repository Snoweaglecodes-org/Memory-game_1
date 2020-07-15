import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:convert';
import 'dart:math';
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
                    _storeelement(_rng(0)),
                    _storeelement(_rng(1)),
                    _storeelement(_rng(2)),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _storeelement(_rng(3)),
                    _storeelement(_rng(4)),
                    _storeelement(_rng(5)),

                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _storeelement(_rng(6)),
                    _storeelement(_rng(7)),

                  ],
                ),
              ],
            )));
  }

  var randWist =  ['1','2','3','4','1','2','3','4'];
    List shuffle(List randWist) {

      var random = new Random();

      // Go through all elements.
      for (var i = randWist.length - 1; i > 0; i--) {

        // Pick a pseudorandom number according to the list length
        var n = random.nextInt(i + 1);

        var temp = randWist[i];
        randWist[i] = randWist[n];
        randWist[n] = temp;
      }
      print(randWist);
      return randWist;
    }

  _rng(some) {
    shuffle(randWist);
    return randWist[some];
  }

  _storeelement(num) {
    return FlipCard(
      direction: FlipDirection.VERTICAL,

      front: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: (
              Container(

                height: 80.0,
                width: 80.0,
                color: Colors.green,
                //color: Colors.blue,

              )
          ),
        ),
      ),
      back: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: (
              Container(
                child: Text(num,textAlign: TextAlign.center,),
                height: 80.0,
                width:80.0,
                color: Colors.purple,

              )
          ),
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

