import 'package:freezed_annotation/freezed_annotation.dart';

part 'float_action_buttons.freezed.dart';

@freezed
abstract class FloatActionButtons with _$FloatActionButtons {
  const factory FloatActionButtons({
    @Default(true) bool visible,
  }) = _FloatActionButtons;
}
