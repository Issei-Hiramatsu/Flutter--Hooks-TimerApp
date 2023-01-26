import 'package:flutter/material.dart';
import 'package:hooks_timer_app/timer/reusable_hooks/reusable_hooks_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageCustomHook(),
    );
  }
}
