import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int dice1;
  int dice2;
  int diceTotal;

  int createRandomNumber(int maxNumber) {
    return Random().nextInt(maxNumber) + 1;
  }

  int getTotal(int number1, int number2) {
    return number1 + number2;
  }

  @override
  Widget build(BuildContext context) {
    dice1 = createRandomNumber(6);
    dice2 = createRandomNumber(6);
    diceTotal = getTotal(dice1, dice2);
    return Scaffold(
      appBar: AppBar(title: Text("Dicer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(dice1.toString(), style: Theme.of(context).textTheme.headline2),
            Text(dice2.toString(), style: Theme.of(context).textTheme.headline2),
            Divider(),
            Text(diceTotal.toString(), style: Theme.of(context).textTheme.headline1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.casino),
      ),
    );
  }
}
