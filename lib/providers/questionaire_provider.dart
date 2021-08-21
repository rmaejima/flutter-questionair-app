import 'package:questionair_app/controllers/questionaire_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:questionair_app/models/questionaire/questionaire.dart';

// グローバル変数で宣言
final questionairProvider = StateNotifierProvider<QuestionairController, Questionaire>((ref) => QuestionairController());
