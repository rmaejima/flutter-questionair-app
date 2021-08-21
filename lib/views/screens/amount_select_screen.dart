import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionaire_provider.dart';
import 'package:questionair_app/views/components/common/button/next_page_float_button.dart';
import 'package:questionair_app/views/components/common/button/show_dialog_button.dart';
import 'package:questionair_app/views/components/common/dialog/add_list_dialog.dart';
import 'package:questionair_app/views/screens/result_screen.dart';

class AmountSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amount List'),
      ),
      body: _AmountList(),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
        mainAxisSize: MainAxisSize.min,
        children: [
          NextPageFloatButton(nextWidget: ResultScreen()),
          const SizedBox(height: 30),
          ShowDialogButton(dialog: AddListDialog(AddDialog.amount)),
        ],
      ),
    );
  }
}

class _AmountList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _amountState = useProvider(questionaireProvider.select((value) => value));

    return ListView.builder(
      itemCount: _amountState.amount.length,
      itemBuilder: (context, index) {
        return Card(
          // それぞれの名前を表示
          child: Text(_amountState.amount[index]),
        );
      },
    );
  }
}
