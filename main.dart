import 'dart:io';

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
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var store=[1,2,3,4,5,3,2,2,1,2,3,2];
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
   return FlipCard(
     direction: FlipDirection.VERTICAL,
     
     front: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Center(
         child: (
         Container(
               child: Text('hello',textAlign: TextAlign.center,),
           height: 80.0,
           width: 120.0,
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
           child: Text('bye',textAlign: TextAlign.center,),
           height: 80.0,
           width:120.0,

         )
         ),
       ),
     ),
   );

  }

  // ignore: non_constant_identifier_names
}

