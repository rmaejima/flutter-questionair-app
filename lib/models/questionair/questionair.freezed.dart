// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'questionair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionairTearOff {
  const _$QuestionairTearOff();

  _Questionair call(
      {int playerNum = 1,
      List<String> player = const [],
      List<String> alcohol = const [],
      List<int> amount = const []}) {
    return _Questionair(
      playerNum: playerNum,
      player: player,
      alcohol: alcohol,
      amount: amount,
    );
  }
}

/// @nodoc
const $Questionair = _$QuestionairTearOff();

/// @nodoc
mixin _$Questionair {
  int get playerNum => throw _privateConstructorUsedError;
  List<String> get player => throw _privateConstructorUsedError;
  List<String> get alcohol => throw _privateConstructorUsedError;
  List<int> get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionairCopyWith<Questionair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionairCopyWith<$Res> {
  factory $QuestionairCopyWith(
          Questionair value, $Res Function(Questionair) then) =
      _$QuestionairCopyWithImpl<$Res>;
  $Res call(
      {int playerNum,
      List<String> player,
      List<String> alcohol,
      List<int> amount});
}

/// @nodoc
class _$QuestionairCopyWithImpl<$Res> implements $QuestionairCopyWith<$Res> {
  _$QuestionairCopyWithImpl(this._value, this._then);

  final Questionair _value;
  // ignore: unused_field
  final $Res Function(Questionair) _then;

  @override
  $Res call({
    Object? playerNum = freezed,
    Object? player = freezed,
    Object? alcohol = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      playerNum: playerNum == freezed
          ? _value.playerNum
          : playerNum // ignore: cast_nullable_to_non_nullable
              as int,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as List<String>,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionairCopyWith<$Res>
    implements $QuestionairCopyWith<$Res> {
  factory _$QuestionairCopyWith(
          _Questionair value, $Res Function(_Questionair) then) =
      __$QuestionairCopyWithImpl<$Res>;
  @override
  $Res call(
      {int playerNum,
      List<String> player,
      List<String> alcohol,
      List<int> amount});
}

/// @nodoc
class __$QuestionairCopyWithImpl<$Res> extends _$QuestionairCopyWithImpl<$Res>
    implements _$QuestionairCopyWith<$Res> {
  __$QuestionairCopyWithImpl(
      _Questionair _value, $Res Function(_Questionair) _then)
      : super(_value, (v) => _then(v as _Questionair));

  @override
  _Questionair get _value => super._value as _Questionair;

  @override
  $Res call({
    Object? playerNum = freezed,
    Object? player = freezed,
    Object? alcohol = freezed,
    Object? amount = freezed,
  }) {
    return _then(_Questionair(
      playerNum: playerNum == freezed
          ? _value.playerNum
          : playerNum // ignore: cast_nullable_to_non_nullable
              as int,
      player: player == freezed
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as List<String>,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as List<String>,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Questionair implements _Questionair {
  const _$_Questionair(
      {this.playerNum = 1,
      this.player = const [],
      this.alcohol = const [],
      this.amount = const []});

  @JsonKey(defaultValue: 1)
  @override
  final int playerNum;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> player;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> alcohol;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> amount;

  @override
  String toString() {
    return 'Questionair(playerNum: $playerNum, player: $player, alcohol: $alcohol, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Questionair &&
            (identical(other.playerNum, playerNum) ||
                const DeepCollectionEquality()
                    .equals(other.playerNum, playerNum)) &&
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
      const DeepCollectionEquality().hash(playerNum) ^
      const DeepCollectionEquality().hash(player) ^
      const DeepCollectionEquality().hash(alcohol) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$QuestionairCopyWith<_Questionair> get copyWith =>
      __$QuestionairCopyWithImpl<_Questionair>(this, _$identity);
}

abstract class _Questionair implements Questionair {
  const factory _Questionair(
      {int playerNum,
      List<String> player,
      List<String> alcohol,
      List<int> amount}) = _$_Questionair;

  @override
  int get playerNum => throw _privateConstructorUsedError;
  @override
  List<String> get player => throw _privateConstructorUsedError;
  @override
  List<String> get alcohol => throw _privateConstructorUsedError;
  @override
  List<int> get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionairCopyWith<_Questionair> get copyWith =>
      throw _privateConstructorUsedError;
}
