//Hooks Custome 再利用可能
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_timer_app/timer_hooks.dart';

class HomePageCustomHook extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final number = useInfiniteTimer(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: Center(
        child: Text(number.toString()),
      ),
    );
  }
}
