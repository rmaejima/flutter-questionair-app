import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:nomin/controllers/float_action_buttons_controller.dart';
import 'package:nomin/controllers/questionaire_controller.dart';
import 'package:nomin/models/questionaire/questionaire.dart';
import 'package:nomin/providers/float_action_buttons_controller.dart';
import 'package:nomin/constants/page_you_on.dart';
import 'package:nomin/providers/questionaire_provider.dart';

// 共通されたリストクラス
class BuildList extends HookWidget {
  BuildList(this._page);
  final PageYouOn _page;
  @override
  Widget build(BuildContext context) {
    final _state = useProvider(questionaireProvider.select((value) => value));
    final _controller = useProvider(questionaireProvider.notifier);
    final _floatActionButtonsController = useProvider(floatActionButtonsProvider.notifier);

    return ListView.builder(
      itemCount: () {
        switch (_page) {
          case (PageYouOn.player):
            return _state.players.length;
          case (PageYouOn.alcohol):
            return _state.alcohol.length;
          case (PageYouOn.amount):
            return _state.amount.length;
          default:
            break;
        }
      }(),
      itemBuilder: (context, index) {
        return _buildListTile(
          state: _state,
          controller: _controller,
          floatActionButtonController: _floatActionButtonsController,
          index: index,
          page: _page,
        );
      },
    );
  }

  Widget _buildListTile({
    required Questionaire state,
    required QuestionaireController controller,
    required FloatActionButtonsController floatActionButtonController,
    required int index,
    required PageYouOn page,
  }) {
    return ListTile(
      onTap: () {
        // 8人目以降のタイルが押されたときに、2秒間float action buttonを見えなくする
        if (index > 8) {
          floatActionButtonController.takeFlase2s();
        }
      },
      leading: Icon(Icons.account_circle), // 何かしらのiconに変える
      title: () {
        switch (page) {
          case (PageYouOn.player):
            return Text(state.players[index]);
          case (PageYouOn.alcohol):
            return Text(state.alcohol[index]);
          case (PageYouOn.amount):
            return Text(state.amount[index]);
          default:
            break;
        }
      }(),
      tileColor: (() {
        if (index < 6) {
          return Colors.amber[100 + (index * 100)]; //後々色は差し替える
        } else {
          return Colors.amber[1400 - (index * 100)]; //後々色は差し替える
        }
      })(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          // Delete
          switch (page) {
            case (PageYouOn.player):
              controller.deletePlayer(index: index);
              break;
            case (PageYouOn.alcohol):
              controller.deleteAlcohol(index: index);
              break;
            case (PageYouOn.amount):
              controller.deleteAmount(index: index);
              break;
            default:
              break;
          }
        },
      ),
    );
  }
}
