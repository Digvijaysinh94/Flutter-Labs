import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    redi(color: Colors.red),
                    redi(color: Colors.yellow),
                    redi(color: Colors.grey),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    redi(color: Colors.pink, Flex: 2),
                    redi(color: Colors.cyan),
                    redi(color: Colors.black),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    redi(color: Colors.teal),
                    redi(color: Colors.deepOrange),
                    redi(color: Colors.deepPurple, Flex: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget redi({color, Flex}) {
  return Expanded(
    flex: Flex ?? 1,
    child: Container(
      color: color,
    ),
  );
}
