import 'package:flutter/material.dart';

class AnimatedContainerorFooAnimation extends StatefulWidget {
  const AnimatedContainerorFooAnimation({super.key});

  @override
  State<AnimatedContainerorFooAnimation> createState() =>
      _AnimatedContainerorFooAnimationState();
}

class _AnimatedContainerorFooAnimationState
    extends State<AnimatedContainerorFooAnimation> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  Decoration decoration = BoxDecoration(
      color: Colors.black, borderRadius: BorderRadius.circular(20.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                height: _height,
                width: _width,
                decoration: decoration,
                duration: const Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;

                      decoration = const BoxDecoration(color: Colors.black);
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;

                      decoration = BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50.0));
                      flag = true;
                    }
                  });
                },
                child: const Text('Tab Here'))
          ],
        ),
      ),
    );
  }
}
