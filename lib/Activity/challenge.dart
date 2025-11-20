
import 'package:flutter/material.dart';

List<String> imagesFrance = [
  "assets/seasons/Spring.png",
  "assets/seasons/Summer.png",
  "assets/seasons/Autumn.png",
  "assets/seasons/Winter.png",
];

List<String> imagesCambodia = [
  "assets/seasons/Winter.png",
  "assets/seasons/Summer.png",
  "assets/seasons/Autumn.png",
  "assets/seasons/Spring.png",
];

void main() => runApp(
  MaterialApp(debugShowCheckedModeBanner: false, home: SeasonScreen()),
);

class SeasonScreen extends StatelessWidget {
  const SeasonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "SEASONS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SeasonCard(countryName: "FRANCE", imagesPaths: imagesFrance),
                  const SizedBox(width: 20),
                  SeasonCard(
                    countryName: "CAMBODIA",
                    imagesPaths: imagesCambodia,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeasonCard extends StatefulWidget {
  final String countryName;
  final List<String> imagesPaths;
  const SeasonCard({
    required this.countryName,
    required this.imagesPaths,
    super.key,
  });

  @override
  State<SeasonCard> createState() => _SeasonCardState();
}

class _SeasonCardState extends State<SeasonCard> {
  int seasonIndex = 0;

  void onTap() {
    setState(() {
      seasonIndex = (seasonIndex == widget.imagesPaths.length - 1)
          ? 0
          : seasonIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
              child: Image.asset(
                widget.imagesPaths[seasonIndex],
                width: 150,
                height: 270,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text(
              widget.countryName,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}