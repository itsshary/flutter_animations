import 'package:flutter/material.dart';

class HeroAnimationTwo extends StatefulWidget {
  const HeroAnimationTwo({super.key});

  @override
  State<HeroAnimationTwo> createState() => _HeroAnimationTwoState();
}

class _HeroAnimationTwoState extends State<HeroAnimationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Hero(
          tag: "Background",
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          )),
    );
  }
}
