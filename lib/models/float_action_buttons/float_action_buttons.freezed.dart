// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'float_action_buttons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FloatActionButtonsTearOff {
  const _$FloatActionButtonsTearOff();

  _FloatActionButtons call({bool visible = true}) {
    return _FloatActionButtons(
      visible: visible,
    );
  }
}

/// @nodoc
const $FloatActionButtons = _$FloatActionButtonsTearOff();

/// @nodoc
mixin _$FloatActionButtons {
  bool get visible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FloatActionButtonsCopyWith<FloatActionButtons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloatActionButtonsCopyWith<$Res> {
  factory $FloatActionButtonsCopyWith(
          FloatActionButtons value, $Res Function(FloatActionButtons) then) =
      _$FloatActionButtonsCopyWithImpl<$Res>;
  $Res call({bool visible});
}

/// @nodoc
class _$FloatActionButtonsCopyWithImpl<$Res>
    implements $FloatActionButtonsCopyWith<$Res> {
  _$FloatActionButtonsCopyWithImpl(this._value, this._then);

  final FloatActionButtons _value;
  // ignore: unused_field
  final $Res Function(FloatActionButtons) _then;

  @override
  $Res call({
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FloatActionButtonsCopyWith<$Res>
    implements $FloatActionButtonsCopyWith<$Res> {
  factory _$FloatActionButtonsCopyWith(
          _FloatActionButtons value, $Res Function(_FloatActionButtons) then) =
      __$FloatActionButtonsCopyWithImpl<$Res>;
  @override
  $Res call({bool visible});
}

/// @nodoc
class __$FloatActionButtonsCopyWithImpl<$Res>
    extends _$FloatActionButtonsCopyWithImpl<$Res>
    implements _$FloatActionButtonsCopyWith<$Res> {
  __$FloatActionButtonsCopyWithImpl(
      _FloatActionButtons _value, $Res Function(_FloatActionButtons) _then)
      : super(_value, (v) => _then(v as _FloatActionButtons));

  @override
  _FloatActionButtons get _value => super._value as _FloatActionButtons;

  @override
  $Res call({
    Object? visible = freezed,
  }) {
    return _then(_FloatActionButtons(
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FloatActionButtons implements _FloatActionButtons {
  const _$_FloatActionButtons({this.visible = true});

  @JsonKey(defaultValue: true)
  @override
  final bool visible;

  @override
  String toString() {
    return 'FloatActionButtons(visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloatActionButtons &&
            (identical(other.visible, visible) ||
                const DeepCollectionEquality().equals(other.visible, visible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(visible);

  @JsonKey(ignore: true)
  @override
  _$FloatActionButtonsCopyWith<_FloatActionButtons> get copyWith =>
      __$FloatActionButtonsCopyWithImpl<_FloatActionButtons>(this, _$identity);
}

abstract class _FloatActionButtons implements FloatActionButtons {
  const factory _FloatActionButtons({bool visible}) = _$_FloatActionButtons;

  @override
  bool get visible => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FloatActionButtonsCopyWith<_FloatActionButtons> get copyWith =>
      throw _privateConstructorUsedError;
}
