import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:questionair_app/views/screens/q1.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('最初のページ'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('アンケートを始める'),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) {
                  return Q1();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
