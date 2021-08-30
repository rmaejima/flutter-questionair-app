import 'package:nomin/models/questionaire/questionaire.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionaireController extends StateNotifier<Questionaire> {
  // 本来であれば、ロジックのみ（更新を画面に反映する必要のない変数Loadingなど）を保持し、コンストラクタに入れ込む
  QuestionaireController() : super(Questionaire());

  // player
  ///////////////////////////////////////////////////////////////////////
  void addPlayer({required String playerName}) {
    final currentState = state;
    // toList()コマンドを使って値を格納する
    final players = currentState.players.toList()..add(playerName);
    // 上で得た値をcopyWithで代入する
    state = currentState.copyWith(players: players);
  }

  void deletePlayer({required int index}) {
    final currentState = state;
    final players = currentState.players.toList()..removeAt(index);
    state = currentState.copyWith(players: players);
  }
  ///////////////////////////////////////////////////////////////////////

  // alcohol
  ///////////////////////////////////////////////////////////////////////
  void addAlcohol({required String alcohol}) {
    final currentState = state;
    final newAlcohol = currentState.alcohol.toList()..add(alcohol);
    state = currentState.copyWith(alcohol: newAlcohol);
  }

  void deleteAlcohol({required int index}) {
    final currentState = state;
    final alcohol = currentState.alcohol.toList()..removeAt(index);
    state = currentState.copyWith(alcohol: alcohol);
  }
  ///////////////////////////////////////////////////////////////////////

  // amount
  ///////////////////////////////////////////////////////////////////////
  void addAmount({required String amount}) {
    final currentState = state;
    final newAmount = currentState.amount.toList()..add(amount);
    state = currentState.copyWith(amount: newAmount);
  }

  void deleteAmount({required int index}) {
    final currentState = state;
    final amount = currentState.amount.toList()..removeAt(index);
    state = currentState.copyWith(amount: amount);
  }
  ///////////////////////////////////////////////////////////////////////
}
