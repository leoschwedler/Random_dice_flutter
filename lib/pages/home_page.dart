import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftButton = 1;
  int righButton = 1;

  void randomDice() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      righButton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        title: Text("Dicee"),
        backgroundColor: Colors.red,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: randomDice,
                  child: Image.asset(
                    "lib/assets/images/dice$leftButton.png",
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: randomDice,
                  child: Image.asset("lib/assets/images/dice$righButton.png")),
            )),
          ],
        ),
      ),
    );
  }
}
