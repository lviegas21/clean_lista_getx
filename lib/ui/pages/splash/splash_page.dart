import 'package:flutter/material.dart';
import 'package:drawing_animation/drawing_animation.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _run = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw a Potion SVG'),
      ),
      body: Center(
        child: AnimatedDrawing.svg("assets/Vector.svg",
            width: 150,
            height: 150,
            run: _run,
            lineAnimation: LineAnimation.allAtOnce,
            duration: const Duration(milliseconds: 2500), onFinish: () {
          Get.offNamed('/home');
        }),
      ),
    );
    ;
  }
}
