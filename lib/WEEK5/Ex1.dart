import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 10, 20, 10),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,                      
                      ),
                    ),              
                  ],
                ),
              ),
            );
  }
}
void main(){
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [ 
            HobbyCard(title: 'Travelling', icon: Icons.travel_explore, backgroundColor: Colors.green),
            HobbyCard(title: 'Travelling', icon: Icons.travel_explore, backgroundColor: Colors.blueGrey),
            HobbyCard(title: 'Travelling', icon: Icons.travel_explore),
          ],
        ),
      ),
     ), 
    ),
  );
}