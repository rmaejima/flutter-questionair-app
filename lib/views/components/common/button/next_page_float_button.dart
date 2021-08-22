import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPageFloatButton extends StatelessWidget {
  NextPageFloatButton({required this.nextWidget});
  Widget nextWidget;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // 次の画面に遷移
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => nextWidget,
          ),
        );
      },
      tooltip: 'next',
      child: Text('次へ'), //tbd
    );
  }
}
