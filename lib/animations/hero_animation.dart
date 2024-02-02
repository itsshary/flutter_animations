import 'package:flutter/material.dart';
import 'package:flutter_animations/animations/hero_animation_screen2.dart';

//using page navigation during
//used for multiple list
class HeroAnimationWidget extends StatefulWidget {
  const HeroAnimationWidget({super.key});

  @override
  State<HeroAnimationWidget> createState() => _HeroAnimationWidgetState();
}

class _HeroAnimationWidgetState extends State<HeroAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //the hero animation is used to show the transition b/w screens te tag will be same of both screen
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HeroAnimationTwo()));
          },
          child: Hero(
              tag: "Background",
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text('Click Me'),
                ),
              )),
        ),
      ),
    );
  }
}
