import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: askmeanything(),
        ),
      ),
    );

class askmeanything extends StatefulWidget {
  const askmeanything({Key? key}) : super(key: key);

  @override
  State<askmeanything> createState() => _askmeanythingState();
}

class _askmeanythingState extends State<askmeanything> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 0,
          foregroundColor: Colors.blue,
          shadowColor: Colors.blue,
          surfaceTintColor: Colors.blue,
        ),
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          setState((){
            ballNumber = Random().nextInt(5) +1;
          });
        },
      ),
    );
  }
}
