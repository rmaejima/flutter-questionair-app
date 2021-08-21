import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/providers/selected_values_provider.dart';

class ResultScreen extends HookWidget {
  // 乱数を返す関数
  int getRandomInt({required int listLength}) {
    var rand = new math.Random();

    final int _index = rand.nextInt(listLength);
    return _index;
  }

  @override
  Widget build(BuildContext context) {
    final _questionairState = useProvider(questionairProvider.select((value) => value));
    final _selectedValuesController = useProvider(selectedValuesProvider.notifier);
    final _selectedValuesState = useProvider(selectedValuesProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('結果を表示する'),
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              _selectedValuesController.setPlayer(player: _questionairState.players[getRandomInt(listLength: _questionairState.players.length)]);
              _selectedValuesController.setAlcohol(alcohol: _questionairState.alcohol[getRandomInt(listLength: _questionairState.alcohol.length)]);
              _selectedValuesController.setAmount(amount: _questionairState.amount[getRandomInt(listLength: _questionairState.amount.length)]);
            },
          ),
          Text('data'),
          Text(_selectedValuesState.player),
          Text(_selectedValuesState.alcohol),
          Text(_selectedValuesState.amount),
        ],
      ),
    );
  }
}
