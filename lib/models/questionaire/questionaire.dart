import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionaire.freezed.dart';

@freezed
abstract class Questionaire with _$Questionaire {
  const factory Questionaire({
    @Default([]) List<String> players,
    @Default([]) List<String> alcohol,
    @Default([]) List<String> amount,
  }) = _Questionaire;
}
