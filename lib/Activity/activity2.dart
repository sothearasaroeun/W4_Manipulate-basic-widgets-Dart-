import 'package:flutter/material.dart';

void main() {

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                   colors: [
                     Colors.amberAccent,
                     Colors.blue,
                   ],         
                 ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  
                  child: Text(
                    'HELLO',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),   
                )              
              ),
              Container(
              margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                   colors: [
                     Colors.amberAccent,
                     Colors.blue,
                   ],         
                 ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  
                  child: Text(
                    'HELLO',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),   
                )              
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                   colors: [
                     Colors.amberAccent,
                     Colors.blue,
                   ],         
                 ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(40),
                  
                  child: Text(
                    'HELLO',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),   
                )              
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
