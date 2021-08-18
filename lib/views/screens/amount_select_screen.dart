import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/views/components/amount_select/add_amount_dialog.dart';

class AmountSelectScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final _amountController = useProvider(questionairProvider.notifier);
    final _amountState = useProvider(questionairProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        title: Text('Amount List'),
      ),
      body: ListView.builder(
        itemCount: _amountState.amount.length,
        itemBuilder: (context, index) {
          return Card(
            // それぞれの名前を表示
            child: Text(_amountState.amount[index]),
            // child: Text('あいうえお'),
          );
        },
      ),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            // 次の画面に遷移
            onPressed: () {},
            tooltip: 'Increment',
            child: Text('次へ'), //tbd
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            // プレイヤーを追加
            onPressed: () => showDialog(context: context, builder: (BuildContext context) => AddAmountDialog()),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
