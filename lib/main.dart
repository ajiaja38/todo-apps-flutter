import 'package:flutter/material.dart';
import 'package:learn_flutter/constant/Colors.dart';
import 'package:learn_flutter/screens/home.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(const MyApp());
  Wakelock.enable();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: tdGrey,
          secondary: Colors.blueAccent,
        ),
      ),
      home: Home(),
    );
  }
}
