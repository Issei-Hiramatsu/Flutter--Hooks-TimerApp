//Hooks useEffect　stateful が必要ない
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePageHook extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _numberNotifier = useState(0);

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 1), (timer) {
        _numberNotifier.value = timer.tick;
      });
      return timer.cancel;
    }, const []);
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: Center(
        child: Text(_numberNotifier.value.toString()),
      ),
    );
  }
}
