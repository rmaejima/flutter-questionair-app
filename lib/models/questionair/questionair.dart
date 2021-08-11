import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionair.freezed.dart';

@freezed
abstract class Questionair with _$Questionair {
  // int?などにしないとfreezedを生成されない問題を解決したい
  const factory Questionair({
    @Default('') String param,
    @Default(0) int category,
  }) = _Questionair;
}
