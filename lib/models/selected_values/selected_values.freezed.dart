// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'selected_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectedValuesTearOff {
  const _$SelectedValuesTearOff();

  _SelectedValues call(
      {String player = '', String alcohol = '', String amount = ''}) {
    return _SelectedValues(
      player: player,
      alcohol: alcohol,
      amount: amount,
    );
  }
}

/// @nodoc
const $SelectedValues = _$SelectedValuesTearOff();

/// @nodoc
mixin _$SelectedValues {
  String get player => throw _privateConstructorUsedError;
  String get alcohol => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedValuesCopyWith<SelectedValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedValuesCopyWith<$Res> {
  factory $SelectedValuesCopyWith(
          SelectedValues value, $Res Function(SelectedValues) then) =
      _$SelectedValuesCopyWithImpl<$Res>;
  $Res call({String player, String alcohol, String amount});
}

/// @nodoc
class _$SelectedValuesCopyWithImpl<$Res>
    implements $SelectedValuesCopyWith<$Res> {
  _$SelectedValuesCopyWithImpl(this._value, this._then);

  final SelectedValues _value;
  // ignore: unused_field
  final $Res Function(SelectedValues) _then;

  @override
  $Res call({
    Object? player = freezed,
    Object? alcohol = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as String,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SelectedValuesCopyWith<$Res>
    implements $SelectedValuesCopyWith<$Res> {
  factory _$SelectedValuesCopyWith(
          _SelectedValues value, $Res Function(_SelectedValues) then) =
      __$SelectedValuesCopyWithImpl<$Res>;
  @override
  $Res call({String player, String alcohol, String amount});
}

/// @nodoc
class __$SelectedValuesCopyWithImpl<$Res>
    extends _$SelectedValuesCopyWithImpl<$Res>
    implements _$SelectedValuesCopyWith<$Res> {
  __$SelectedValuesCopyWithImpl(
      _SelectedValues _value, $Res Function(_SelectedValues) _then)
      : super(_value, (v) => _then(v as _SelectedValues));

  @override
  _SelectedValues get _value => super._value as _SelectedValues;

  @override
  $Res call({
    Object? player = freezed,
    Object? alcohol = freezed,
    Object? amount = freezed,
  }) {
    return _then(_SelectedValues(
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as String,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedValues implements _SelectedValues {
  const _$_SelectedValues(
      {this.player = '', this.alcohol = '', this.amount = ''});

  @JsonKey(defaultValue: '')
  @override
  final String player;
  @JsonKey(defaultValue: '')
  @override
  final String alcohol;
  @JsonKey(defaultValue: '')
  @override
  final String amount;

  @override
  String toString() {
    return 'SelectedValues(player: $player, alcohol: $alcohol, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedValues &&
            (identical(other.player, player) ||
                const DeepCollectionEquality().equals(other.player, player)) &&
            (identical(other.alcohol, alcohol) ||
                const DeepCollectionEquality()
                    .equals(other.alcohol, alcohol)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$SelectedValuesCopyWith<_SelectedValues> get copyWith =>
      __$SelectedValuesCopyWithImpl<_SelectedValues>(this, _$identity);
}

abstract class _SelectedValues implements SelectedValues {
  const factory _SelectedValues(
      {String player, String alcohol, String amount}) = _$_SelectedValues;

  @override
  String get player => throw _privateConstructorUsedError;
  @override
  String get alcohol => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedValuesCopyWith<_SelectedValues> get copyWith =>
      throw _privateConstructorUsedError;
}
