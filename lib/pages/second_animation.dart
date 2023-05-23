import 'dart:math';
import 'package:flutter/material.dart';

const _duration = Duration(milliseconds: 400);
double randomBorderRadius() {
  return Random().nextDouble() * 64;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

Color randomColor() {
  return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}

class SecondAnimation extends StatefulWidget {
  const SecondAnimation({Key? key}) : super(key: key);

  @override
  State<SecondAnimation> createState() => _SecondAnimation();
}

class _SecondAnimation extends State<SecondAnimation> {
  late Color color;
  late double borderRadius;
  late double margin;

  @override
  initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void change() {
    setState(() {
      color = randomColor();
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
        title: const Text("Shape Generator Animation"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 150)),
            SizedBox(
              width: 128,
              height: 128,
              child: AnimatedContainer(
                margin: EdgeInsets.all(margin),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                duration: _duration,
                curve: Curves.easeInOutBack,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              child: const Text('Change'),
              onPressed: () => change(),
            ),
          ],
        ),
      ),
    );
  }
}
