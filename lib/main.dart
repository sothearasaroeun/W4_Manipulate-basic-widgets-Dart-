import 'package:flutter/material.dart';

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

class CustomCard extends StatelessWidget{
  final String text;
  final Color? color;
  final LinearGradient? gradient;

  const CustomCard({required this.text, this.color = Colors.blue, this.gradient});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
void main() {
  runApp (
    MaterialApp(
      title: 'EX4',
      home: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(99.99),
        child: Column(
          children: [
            CustomCard(text: "OOP", color: Colors.blue[100]),
            CustomCard(text: "DART", color: Colors.blue[300]),
            CustomCard(
              text: "FLUTTER", 
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade600, 
                  Colors.blue.shade900,
                ],
              ),
            ),
          ],
        ),
      )
    )
  );
}