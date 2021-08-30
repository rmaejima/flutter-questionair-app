import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nomin/constants/page_you_on.dart';
import 'package:nomin/providers/float_action_buttons_controller.dart';
import 'package:nomin/views/components/common/button/next_page_float_button.dart';
import 'package:nomin/views/components/common/button/show_dialog_button.dart';
import 'package:nomin/views/components/common/dialog/add_list_dialog.dart';
import 'package:nomin/views/screens/alcohol_select_screen.dart';
import 'package:nomin/views/screens/amount_select_screen.dart';
import 'package:nomin/views/screens/player_select_screen.dart';
import 'package:nomin/views/screens/result_screen.dart';

class BuildFloatActionButtons extends HookWidget {
  BuildFloatActionButtons(this._page);
  PageYouOn _page;
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
            NextPageFloatButton(nextWidget: _nextWidget(_page)),
            const SizedBox(height: 30),
            // ShowDialogButton(dialog: AddListDialog(AddDialog.player)),
            ShowDialogButton(dialog: AddListDialog(_returnDialog(_page))),
          ],
        ),
      ),
    );
  }

  AddDialog _returnDialog(PageYouOn _page) {
    switch (_page) {
      case (PageYouOn.player):
        return AddDialog.player;
      case (PageYouOn.alcohol):
        return AddDialog.alcohol;
      case (PageYouOn.amount):
        return AddDialog.amount;
      default:
        return AddDialog.player;
    }
  }

  Widget _nextWidget(PageYouOn _page) {
    switch (_page) {
      case (PageYouOn.player):
        return AlcoholSelectScreen();
      case (PageYouOn.alcohol):
        return AmountSelectScreen();
      case (PageYouOn.amount):
        return ResultScreen();
      default:
        return PlayerSelectScreen();
    }
  }
}
