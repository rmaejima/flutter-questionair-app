import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionaire_provider.dart';
import 'package:questionair_app/views/components/common/button/next_page_float_button.dart';
import 'package:questionair_app/views/components/common/button/show_dialog_button.dart';
import 'package:questionair_app/views/components/common/dialog/add_list_dialog.dart';
import 'package:questionair_app/views/screens/amount_select_screen.dart';

class AlcoholSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alcohol List'),
      ),
      body: _AlcoholList(),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
        mainAxisSize: MainAxisSize.min,
        children: [
          NextPageFloatButton(nextWidget: AmountSelectScreen()),
          const SizedBox(height: 30),
          ShowDialogButton(dialog: AddListDialog(AddDialog.alcohol)),
        ],
      ),
    );
  }
}

class _AlcoholList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _alcoholState = useProvider(questionairProvider.select((value) => value));

    return ListView.builder(
      itemCount: _alcoholState.alcohol.length,
      itemBuilder: (context, index) {
        return Card(
          // それぞれの名前を表示
          child: Text(_alcoholState.alcohol[index]),
        );
      },
    );
  }
}
