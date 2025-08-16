import 'dart:async';
import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  const CustomAnimation({super.key});

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> {
  Color _color = Colors.purple;
  double _width = 200.0;
  double _height = 200.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    void _change() {
      var rng = Random();
      var randomColor = Color(
        (math.Random().nextDouble() * 0xFFFFFF).toInt(),
      ).withOpacity(1.0);

      setState(() {
        _color = randomColor;
        _width = rng.nextInt(200).toDouble();
        _height = rng.nextInt(200).toDouble();
      });
    }

    Timer.periodic(const Duration(seconds: 1), (timer) {
      _change();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      color: _color,
      width: _width,
      height: _height,
      child: const Center(child: Text('Hello Flutter')),
    );
  }
}
