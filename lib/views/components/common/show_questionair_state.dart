import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:questionair_app/providers/questionair_provider.dart';

class ShowQuestionairState extends HookWidget {
  // ステートの宣言
  final _questionairState =
      useProvider(questionairProvider.select((value) => value));
  Widget build(BuildContext context) {
    return Text(
        "パラメータ : ${_questionairState.param}\nカテゴリー : ${_questionairState.category}");
  }
}
