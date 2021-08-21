import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_values.freezed.dart';

@freezed
abstract class SelectedValues with _$SelectedValues {
  const factory SelectedValues({
    @Default('') String player,
    @Default('') String alcohol,
    @Default('') String amount,
  }) = _SelectedValues;
}
