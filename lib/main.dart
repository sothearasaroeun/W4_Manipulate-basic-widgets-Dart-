//import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       title: 'EX1',
//       home: Scaffold(
//         body: Center(
//           child: Text("Hello",
//             style: TextStyle(color: Colors.red)),
//         ),
//       ),
//     ));
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'EX2',
//       home: Container(
//         color: Colors.blue,
//         padding: EdgeInsets.all(11),
//         margin: EdgeInsets.all(11),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all( Radius.circular(12.0)),
//             color: Colors.indigo,
//           ),
//           child: Center(
//             child: Text("SOTHEARA",
//               style: TextStyle(color: Colors.white,
//               decoration: TextDecoration.none),
//           ),
//         ),
//         ),
//         ),
//     ));
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'EX3',
//       home: Container(
//         color: Colors.grey,
//         padding: EdgeInsets.all(99.99),
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(bottom: 20),
//               decoration: BoxDecoration(
//                 color: Colors.blue[100],
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//             ),
//               child: Center(
//                 child: Text("OOP",
//                   style: TextStyle(color: Colors.white,
//                   decoration: TextDecoration.none),
//             ),
//           ),
//           ),
//           Container(
//               margin: EdgeInsets.only(bottom: 20),
//               decoration: BoxDecoration(
//                 color: Colors.blue[300],
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//             ),
//               child: Center(
//                 child: Text("DART",
//                   style: TextStyle(color: Colors.white,
//                   decoration: TextDecoration.none),
//             ),
//           ),
//           ),
//           Container(
//               margin: EdgeInsets.only(bottom: 20),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.blue.shade300,
//                     Colors.blue.shade900,
//                   ],         
//                 ),
//               ),
//               child: Center(
//                 child: Text("FLUTTER",
//                   style: TextStyle(color: Colors.white,
//                   decoration: TextDecoration.none),
//             ),
//           ),
//           ),
//           ],
//           ),
//         ),
//       ),
//     );
// }

// class CustomCard extends StatelessWidget{
//   final String text;
//   final Color? color;
//   final LinearGradient? gradient;

//   const CustomCard({required this.text, this.color = Colors.blue, this.gradient});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       decoration: BoxDecoration(
//         color: color,
//         gradient: gradient,
//         borderRadius: BorderRadius.all(Radius.circular(25)),
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(
//             color: Colors.white,
//             decoration: TextDecoration.none),
//         ),
//       ),
//     );
//   }
// }
// void main() {
//   runApp (
//     MaterialApp(
//       title: 'EX4',
//       home: Container(
//         color: Colors.grey,
//         padding: EdgeInsets.all(99.99),
//         child: Column(
//           children: [
//             CustomCard(text: "OOP", color: Colors.blue[100]),
//             CustomCard(text: "DART", color: Colors.blue[300]),
//             CustomCard(
//               text: "FLUTTER", 
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.blue.shade600, 
//                   Colors.blue.shade900,
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )
//     )
//   );
// }


// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 50,
//                   color: Colors.yellow,
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 50,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Container(
//                   width: 100,
//                   height: 50,
//                   color: Colors.yellow,
//                 ),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.green,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 60),
//                           Container(
//                             width: 60,
//                             height: 60,
//                             color: Colors.white,
//                           ),
//                           SizedBox(height: 20),
//                           Container(
//                             width: 60,
//                             height: 60,
//                             color: Colors.white,
//                           ),
//                           SizedBox(height: 20),
//                           Container(
//                             width: 60,
//                             height: 60,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsetsGeometry.only(right: 10)),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.orange,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: Column( 
// 			// YOUR CODE
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: 50,
//                   width: 50,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   height: 50,
//                   width:100,
//                   color: Colors.yellow,
//                 ),
//                 Expanded(
//                   child: 
//                     Container(
//                     height: 50,
//                     width: 50,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 100,
//                   color: Colors.yellow,
//                 ),
//                 Container(
//                   height: 50,
//                   width: 50,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),

//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.green,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           SizedBox(height: 10),
//                           Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.white,
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.white,
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             height: 60,
//                             width: 60,
//                             color: Colors.white,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: 10)),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.orange,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
// 		    ),
//       ),
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
        
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(color: Colors.green, height: 200),
//             ),
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(height: 100, color: Colors.blue,),
//               ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(color: Colors.red, height: 100),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {

//   void onPress(){
//     print("hello");
//   }
//   runApp(
//     MaterialApp(
//       title: 'My app',
//       home: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressed: onPress,
//             child: const Text(
//               "Press me",
//               style: TextStyle(fontSize: 50),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

// import 'package:flutter/material.dart';

// const String diceImage2 = 'assets/dices/dice-2.png';
// const String diceImage4 = 'assets/dices/dice-4.png';

// String activeDiceImage = diceImage2;

// class DiceRoller extends StatefulWidget {
//   const DiceRoller({super.key});

//   @override
//   State<DiceRoller> createState() => _DiceRollerState();
// }

// class _DiceRollerState extends State<DiceRoller> {
//   void rollDice() {
//     //  Display the dice 4 !
//     setState(() {
//       activeDiceImage = diceImage2;
//     });
//   }

//   @override
//   Widget build(context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         GestureDetector(
//           onTap: () {},
//           child: 
//             Image.asset(activeDiceImage, width: 200),
//             const SizedBox(height: 20),
//         ),
        
//         TextButton(
//           onPressed: rollDice,
//           style: TextButton.styleFrom(
//             foregroundColor: Colors.white,
//             textStyle: const TextStyle(fontSize: 28),
//           ),
//           child: const Text('Roll Dice'),
//         ),
//       ],
//     );
//   }
// }

// void main() => runApp(
//   const MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Center(child: DiceRoller()),
//     ),
//   ),
// );
