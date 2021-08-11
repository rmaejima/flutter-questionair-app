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

  _Questionair call({String param = '', int catergory = 0}) {
    return _Questionair(
      param: param,
      catergory: catergory,
    );
  }
}

/// @nodoc
const $Questionair = _$QuestionairTearOff();

/// @nodoc
mixin _$Questionair {
  String get param => throw _privateConstructorUsedError;
  int get catergory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionairCopyWith<Questionair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionairCopyWith<$Res> {
  factory $QuestionairCopyWith(
          Questionair value, $Res Function(Questionair) then) =
      _$QuestionairCopyWithImpl<$Res>;
  $Res call({String param, int catergory});
}

/// @nodoc
class _$QuestionairCopyWithImpl<$Res> implements $QuestionairCopyWith<$Res> {
  _$QuestionairCopyWithImpl(this._value, this._then);

  final Questionair _value;
  // ignore: unused_field
  final $Res Function(Questionair) _then;

  @override
  $Res call({
    Object? param = freezed,
    Object? catergory = freezed,
  }) {
    return _then(_value.copyWith(
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      catergory: catergory == freezed
          ? _value.catergory
          : catergory // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String param, int catergory});
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
    Object? param = freezed,
    Object? catergory = freezed,
  }) {
    return _then(_Questionair(
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
      catergory: catergory == freezed
          ? _value.catergory
          : catergory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Questionair implements _Questionair {
  const _$_Questionair({this.param = '', this.catergory = 0});

  @JsonKey(defaultValue: '')
  @override
  final String param;
  @JsonKey(defaultValue: 0)
  @override
  final int catergory;

  @override
  String toString() {
    return 'Questionair(param: $param, catergory: $catergory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Questionair &&
            (identical(other.param, param) ||
                const DeepCollectionEquality().equals(other.param, param)) &&
            (identical(other.catergory, catergory) ||
                const DeepCollectionEquality()
                    .equals(other.catergory, catergory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(param) ^
      const DeepCollectionEquality().hash(catergory);

  @JsonKey(ignore: true)
  @override
  _$QuestionairCopyWith<_Questionair> get copyWith =>
      __$QuestionairCopyWithImpl<_Questionair>(this, _$identity);
}

abstract class _Questionair implements Questionair {
  const factory _Questionair({String param, int catergory}) = _$_Questionair;

  @override
  String get param => throw _privateConstructorUsedError;
  @override
  int get catergory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionairCopyWith<_Questionair> get copyWith =>
      throw _privateConstructorUsedError;
}
