import 'package:questionair_app/controllers/questionair_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:questionair_app/models/questionair/questionair.dart';

// グローバル変数で宣言
final questionairProvider = StateNotifierProvider<QuestionairController, Questionair>((ref) => QuestionairController());
