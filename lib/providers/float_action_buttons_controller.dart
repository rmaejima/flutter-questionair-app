import 'package:nomin/controllers/float_action_buttons_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomin/models/float_action_buttons/float_action_buttons.dart';

// グローバル変数で宣言
final floatActionButtonsProvider = StateNotifierProvider<FloatActionButtonsController, FloatActionButtons>((ref) => FloatActionButtonsController());
