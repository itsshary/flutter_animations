import 'dart:async';

import 'package:flutter/material.dart';

class CrossFadeAnimation extends StatefulWidget {
  const CrossFadeAnimation({super.key});

  @override
  State<CrossFadeAnimation> createState() => _CrossFadeAnimationState();
}

class _CrossFadeAnimationState extends State<CrossFadeAnimation> {
  bool istrue = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        reload();
      },
    );
  }

  void reload() {
    setState(() {
      istrue = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(seconds: 5),
            firstChild: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            secondChild: Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceOut,
            crossFadeState:
                istrue ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Tab Here'))
        ],
      ),
    );
  }
}
