import 'package:flutter/material.dart';
import 'package:any_animated_button/any_animated_button.dart';

class FirstAnimation extends StatefulWidget {
  const FirstAnimation({Key? key}) : super(key: key);

  @override
  State<FirstAnimation> createState() => _FirstAnimation();
}

class _FirstAnimation extends State<FirstAnimation> {
  double opacity = 0.0;

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
          title: const Text("Animation 1"),
        ),
        body: ListView(children: <Widget>[
          Image.network(path),
          ElevatedButton(
            child: const Text('Show Detail'),
            onPressed: () => setState(() {
              opacity = 1;
            }),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: opacity,
            child: Column(
              children: const [
                Text('Type: Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ),
          )
        ]));
  }
}

const path =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';
