import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var diceNumLeft=1;
  var diceNumRight=1;
  

  diceUpdate(){
    setState(() {
      diceNumLeft=Random().nextInt(6)+1;
      diceNumRight=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicee"),
        centerTitle: true,
        backgroundColor: Colors.red,
        shape: StadiumBorder(),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceUpdate();
                },
                child: Image.asset('images/dice${diceNumLeft}.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  diceUpdate();
                },
                child: Image.asset('images/dice${diceNumRight}.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
