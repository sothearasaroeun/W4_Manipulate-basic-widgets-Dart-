import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget{
  final String text;
  final Color start;
  final Color end;

  const GradientButton ({super.key, required this.text, required this.start, required this.end});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],         
        ),
        borderRadius: BorderRadius.circular(30),
      ),
        child: Padding(
        padding: EdgeInsets.all(40),        
          child: Text(
            text,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),   
        )
    );
  }
}

void main() {

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientButton(
                text: 'HELLO 1',
                start: Colors.blue,
                end:Colors.red,         
              ),
              GradientButton(
                text: 'HELLO 2',
                start: Colors.blue,
                end:Colors.red,         
              ),
              GradientButton(
                text: 'HELLO 3',
                start: Colors.blue,
                end:Colors.red,         
              ),
            ],
          ),
        ),
      ),
    ),
  );
}