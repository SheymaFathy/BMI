import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.result,
      required this.age,
      required this.isMale});
  final double result;
  final int age;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Galender : ${isMale? 'MALE':'FEMALE'}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            Text(
              ' Result : $result',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            Text(
              'Age : $age',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
