import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionair.freezed.dart';

@freezed
abstract class Questionair with _$Questionair {
  const factory Questionair({
    @Default(0) int playersNum,
    @Default([]) List<String> players,
    @Default([]) List<String> alcohol,
    @Default([]) List<int> amount,
  }) = _Questionair;
}
