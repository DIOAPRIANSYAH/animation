import 'package:animation/pages/first_animation.dart';
import 'package:animation/pages/five_animation.dart';
import 'package:animation/pages/fourth_animation.dart';
import 'package:animation/pages/third_animation.dart';
import 'package:animation/pages/second_animation.dart';
import 'package:animation/pages/six_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView Navigation I',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

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
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255), // <-- SEE HERE
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        title: const Text('Main Menu'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('1'),
            ),
            title: const Text('First Animation'),
            subtitle: const Text('Picture Detail Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FirstAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('2'),
            ),
            title: const Text('Second Animation'),
            subtitle: const Text('Shape Generator Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('3'),
            ),
            title: const Text('Third Animation'),
            subtitle: const Text('Basic Hero Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const thirdhAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('4'),
            ),
            title: const Text('Fourth Animation'),
            subtitle: const Text('Radial Hero Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const fourthAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('5'),
            ),
            title: const Text('Five Animation'),
            subtitle: const Text('Staggered Picture Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const fiveAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('6'),
            ),
            title: const Text('Six Animation'),
            subtitle: const Text('Staggered Animation'),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const sixAnimation(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 36, 192, 72), width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
