// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timestamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EDBTimestamp _$EDBTimestampFromJson(Map<String, dynamic> json) {
  return _EDBTimestamp.fromJson(json);
}

/// @nodoc
class _$EDBTimestampTearOff {
  const _$EDBTimestampTearOff();

// ignore: unused_element
  _EDBTimestamp call(
      {DateTime createdAt, DateTime updatedAt, DateTime deletedAt}) {
    return _EDBTimestamp(
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  EDBTimestamp fromJson(Map<String, Object> json) {
    return EDBTimestamp.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EDBTimestamp = _$EDBTimestampTearOff();

/// @nodoc
mixin _$EDBTimestamp {
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime get deletedAt;

  Map<String, dynamic> toJson();
  $EDBTimestampCopyWith<EDBTimestamp> get copyWith;
}

/// @nodoc
abstract class $EDBTimestampCopyWith<$Res> {
  factory $EDBTimestampCopyWith(
          EDBTimestamp value, $Res Function(EDBTimestamp) then) =
      _$EDBTimestampCopyWithImpl<$Res>;
  $Res call({DateTime createdAt, DateTime updatedAt, DateTime deletedAt});
}

/// @nodoc
class _$EDBTimestampCopyWithImpl<$Res> implements $EDBTimestampCopyWith<$Res> {
  _$EDBTimestampCopyWithImpl(this._value, this._then);

  final EDBTimestamp _value;
  // ignore: unused_field
  final $Res Function(EDBTimestamp) _then;

  @override
  $Res call({
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$EDBTimestampCopyWith<$Res>
    implements $EDBTimestampCopyWith<$Res> {
  factory _$EDBTimestampCopyWith(
          _EDBTimestamp value, $Res Function(_EDBTimestamp) then) =
      __$EDBTimestampCopyWithImpl<$Res>;
  @override
  $Res call({DateTime createdAt, DateTime updatedAt, DateTime deletedAt});
}

/// @nodoc
class __$EDBTimestampCopyWithImpl<$Res> extends _$EDBTimestampCopyWithImpl<$Res>
    implements _$EDBTimestampCopyWith<$Res> {
  __$EDBTimestampCopyWithImpl(
      _EDBTimestamp _value, $Res Function(_EDBTimestamp) _then)
      : super(_value, (v) => _then(v as _EDBTimestamp));

  @override
  _EDBTimestamp get _value => super._value as _EDBTimestamp;

  @override
  $Res call({
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_EDBTimestamp(
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EDBTimestamp with DiagnosticableTreeMixin implements _EDBTimestamp {
  _$_EDBTimestamp({this.createdAt, this.updatedAt, this.deletedAt});

  factory _$_EDBTimestamp.fromJson(Map<String, dynamic> json) =>
      _$_$_EDBTimestampFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EDBTimestamp(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EDBTimestamp'))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EDBTimestamp &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @override
  _$EDBTimestampCopyWith<_EDBTimestamp> get copyWith =>
      __$EDBTimestampCopyWithImpl<_EDBTimestamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EDBTimestampToJson(this);
  }
}

abstract class _EDBTimestamp implements EDBTimestamp {
  factory _EDBTimestamp(
      {DateTime createdAt,
      DateTime updatedAt,
      DateTime deletedAt}) = _$_EDBTimestamp;

  factory _EDBTimestamp.fromJson(Map<String, dynamic> json) =
      _$_EDBTimestamp.fromJson;

  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime get deletedAt;
  @override
  _$EDBTimestampCopyWith<_EDBTimestamp> get copyWith;
}
