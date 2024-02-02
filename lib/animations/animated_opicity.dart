import 'package:flutter/material.dart';

class AnimatedOpicity extends StatefulWidget {
  const AnimatedOpicity({super.key});

  @override
  State<AnimatedOpicity> createState() => _AnimatedOpicityState();
}

class _AnimatedOpicityState extends State<AnimatedOpicity> {
  double value = 1.0;
  bool isshow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: value,
              duration: const Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isshow) {
                      value = 1.0;
                      isshow = false;
                    } else {
                      value = 0.0;
                      isshow = true;
                    }
                  });
                },
                child: const Text('tAP hEE'))
          ],
        ),
      ),
    );
  }
}
