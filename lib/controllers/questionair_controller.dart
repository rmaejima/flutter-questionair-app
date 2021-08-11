import 'package:questionair_app/models/questionair/questionair.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionairController extends StateNotifier<Questionair> {
  // 本来であれば、ロジックのみ（更新を画面に反映する必要のない変数Loadingなど）を保持し、コンストラクタに入れ込む
  QuestionairController() : super(Questionair());

  void setParam(String value) {
    state = state.copyWith(param: state.param + ' ' + value);
  }

  void resetParam() {
    state = state.copyWith(param: '');
  }

  void setCategory(int value) {
    state = state.copyWith(category: value);
  }

  void resetCategory() {
    state = state.copyWith(category: 0);
  }
}
