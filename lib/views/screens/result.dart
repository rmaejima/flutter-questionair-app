import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:questionair_app/views/components/common/show_questionair_state.dart';
import 'package:questionair_app/views/components/result/back_top_button.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('結果'),
      ),
      body: ListView(
        children: [
          ShowQuestionairState(),
          // 後々変える
          BackTopButton(),
        ],
      ),
    );
  }
}
