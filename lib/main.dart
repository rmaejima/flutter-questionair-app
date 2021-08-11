import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:questionair_app/views/screens/top.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'アンケートアプリ',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Top(),
    );
  }
}
