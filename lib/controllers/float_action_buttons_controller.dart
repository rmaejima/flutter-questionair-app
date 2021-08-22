import 'package:state_notifier/state_notifier.dart';
import 'package:nomin/models/float_action_buttons/float_action_buttons.dart';

class FloatActionButtonsController extends StateNotifier<FloatActionButtons> {
  FloatActionButtonsController() : super(FloatActionButtons());

  // 2秒間だけvisibleをfalseにする
  void takeFlase2s() async {
    state = state.copyWith(visible: false);
    await new Future.delayed(new Duration(seconds: 2));
    state = state.copyWith(visible: true);
  }
}
