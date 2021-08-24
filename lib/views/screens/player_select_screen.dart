import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nomin/controllers/float_action_buttons_controller.dart';
import 'package:nomin/controllers/questionaire_controller.dart';
import 'package:nomin/models/questionaire/questionaire.dart';
import 'package:nomin/providers/float_action_buttons_controller.dart';

import 'package:nomin/providers/questionaire_provider.dart';
import 'package:nomin/views/components/common/button/next_page_float_button.dart';
import 'package:nomin/views/components/common/button/show_dialog_button.dart';
import 'package:nomin/views/components/common/dialog/add_list_dialog.dart';
import 'package:nomin/views/components/common/list/build_list.dart';
import 'package:nomin/views/screens/alcohol_select_screen.dart';

class PlayerSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player List'),
      ),
      // body: _PlayerList(),
      body: BuildList(PageYouOn.player),
      floatingActionButton: _FloatActionButtons(),
    );
  }
}

// class _PlayerList extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final _playerState = useProvider(questionaireProvider.select((value) => value));
//     final _playerController = useProvider(questionaireProvider.notifier);
//     final _floatActionButtonsController = useProvider(floatActionButtonsProvider.notifier);

//     return ListView.builder(
//       itemCount: _playerState.players.length,
//       itemBuilder: (context, index) {
//         return _buildListTile(
//           playerState: _playerState,
//           playerController: _playerController,
//           floatActionButtonController: _floatActionButtonsController,
//           index: index,
//         );
//       },
//     );
//   }

//   Widget _buildListTile({
//     required Questionaire playerState,
//     required QuestionaireController playerController,
//     required FloatActionButtonsController floatActionButtonController,
//     required int index,
//   }) {
//     return ListTile(
//       onTap: () {
//         // 8人目以降のタイルが押されたときに、2秒間float action buttonを見えなくする
//         if (index > 8) {
//           floatActionButtonController.takeFlase2s();
//         }
//       },
//       leading: Icon(Icons.account_circle), // 何かしらのiconに変える
//       title: Text(playerState.players[index]),
//       tileColor: (() {
//         if (index < 6) {
//           return Colors.amber[100 + (index * 100)]; //後々色は差し替える
//         } else {
//           return Colors.amber[1400 - (index * 100)]; //後々色は差し替える
//         }
//       })(),
//       trailing: IconButton(
//         icon: Icon(Icons.delete),
//         onPressed: () {
//           // Delete player
//           playerController.deletePlayer(index: index);
//         },
//       ),
//     );
//   }
// }

class _FloatActionButtons extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _floatActionButtonsState = useProvider(floatActionButtonsProvider.select((value) => value));

    return IgnorePointer(
      ignoring: !_floatActionButtonsState.visible, // trueで当たり判定を無視
      child: AnimatedOpacity(
        opacity: _floatActionButtonsState.visible ? 1.0 : 0.3,
        duration: const Duration(milliseconds: 300),
        child: Column(
          verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
          mainAxisSize: MainAxisSize.min,
          children: [
            NextPageFloatButton(nextWidget: AlcoholSelectScreen()),
            const SizedBox(height: 30),
            ShowDialogButton(dialog: AddListDialog(AddDialog.player)),
          ],
        ),
      ),
    );
  }
}
