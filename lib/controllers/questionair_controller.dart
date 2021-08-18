import 'package:flutter/cupertino.dart';
import 'package:questionair_app/models/questionair/questionair.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionairController extends StateNotifier<Questionair> {
  // 本来であれば、ロジックのみ（更新を画面に反映する必要のない変数Loadingなど）を保持し、コンストラクタに入れ込む
  QuestionairController() : super(Questionair());

  // プレイヤーの追加（名前は指定しない)
  void addPlayer() {
    final currentState = state;
    // toList()コマンドを使って値を格納する
    final players = currentState.players.toList()..add('');
    // 上で得た値をcopyWithで代入する
    state = currentState.copyWith(players: players);
  }

  // プレイヤーの名前を設定
  void setPlayerName(String name, int i) {
    final currentState = state;
    final playersName = currentState.players.toList()..replaceRange(i, i, [name]);
    state = state.copyWith(players: playersName);
  }

  // void setParam(String value) {
  //   state = state.copyWith(param: state.param + ' ' + value);
  // }

  // void resetParam() {
  //   state = state.copyWith(param: '');
  // }

  // void setCategory(int value) {
  //   state = state.copyWith(category: value);
  // }

  // void resetCategory() {
  //   state = state.copyWith(category: 0);
  // }
}
