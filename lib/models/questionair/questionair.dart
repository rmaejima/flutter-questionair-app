import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionair.freezed.dart';

@freezed
abstract class Questionair with _$Questionair {
  const factory Questionair({
    @Default(1) int playerNum,
    @Default([]) List<String> player,
    @Default([]) List<String> alcohol,
    @Default([]) List<int> amount,
  }) = _Questionair;
}
