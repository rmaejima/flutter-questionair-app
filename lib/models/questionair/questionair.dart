import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionair.freezed.dart';

@freezed
abstract class Questionair with _$Questionair {
  const factory Questionair({
    @Default([]) List<String> players,
    @Default([]) List<String> alcohol,
    @Default([]) List<String> amount,
  }) = _Questionair;
}
