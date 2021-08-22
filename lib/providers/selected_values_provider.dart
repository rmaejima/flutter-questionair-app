import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomin/controllers/selected_values_controller.dart';
import 'package:nomin/models/selected_values/selected_values.dart';

// グローバル変数で宣言
final selectedValuesProvider = StateNotifierProvider<SelectedValuesController, SelectedValues>((ref) => SelectedValuesController());
