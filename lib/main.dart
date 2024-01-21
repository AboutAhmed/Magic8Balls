import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Center
            (child: Text(
              'Ask me anything')
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                onPressed: (){
                  setState((){
                    ballnum = Random().nextInt(5)+1;
                  });
                },

                child:Image.asset('images/ball$ballnum.png',),
              ), )
            ],
          )

          ),
        ),
      );
  }
}

