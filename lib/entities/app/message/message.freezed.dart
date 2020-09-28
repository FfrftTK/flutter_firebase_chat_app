// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EAppMessage _$EAppMessageFromJson(Map<String, dynamic> json) {
  return _EAppMessage.fromJson(json);
}

/// @nodoc
class _$EAppMessageTearOff {
  const _$EAppMessageTearOff();

// ignore: unused_element
  _EAppMessage call(
      {@required String posterId,
      @required String message,
      @required DateTime postedAt}) {
    return _EAppMessage(
      posterId: posterId,
      message: message,
      postedAt: postedAt,
    );
  }

// ignore: unused_element
  EAppMessage fromJson(Map<String, Object> json) {
    return EAppMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EAppMessage = _$EAppMessageTearOff();

/// @nodoc
mixin _$EAppMessage {
  String get posterId;
  String get message;
  DateTime get postedAt;

  Map<String, dynamic> toJson();
  $EAppMessageCopyWith<EAppMessage> get copyWith;
}

/// @nodoc
abstract class $EAppMessageCopyWith<$Res> {
  factory $EAppMessageCopyWith(
          EAppMessage value, $Res Function(EAppMessage) then) =
      _$EAppMessageCopyWithImpl<$Res>;
  $Res call({String posterId, String message, DateTime postedAt});
}

/// @nodoc
class _$EAppMessageCopyWithImpl<$Res> implements $EAppMessageCopyWith<$Res> {
  _$EAppMessageCopyWithImpl(this._value, this._then);

  final EAppMessage _value;
  // ignore: unused_field
  final $Res Function(EAppMessage) _then;

  @override
  $Res call({
    Object posterId = freezed,
    Object message = freezed,
    Object postedAt = freezed,
  }) {
    return _then(_value.copyWith(
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      message: message == freezed ? _value.message : message as String,
      postedAt: postedAt == freezed ? _value.postedAt : postedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$EAppMessageCopyWith<$Res>
    implements $EAppMessageCopyWith<$Res> {
  factory _$EAppMessageCopyWith(
          _EAppMessage value, $Res Function(_EAppMessage) then) =
      __$EAppMessageCopyWithImpl<$Res>;
  @override
  $Res call({String posterId, String message, DateTime postedAt});
}

/// @nodoc
class __$EAppMessageCopyWithImpl<$Res> extends _$EAppMessageCopyWithImpl<$Res>
    implements _$EAppMessageCopyWith<$Res> {
  __$EAppMessageCopyWithImpl(
      _EAppMessage _value, $Res Function(_EAppMessage) _then)
      : super(_value, (v) => _then(v as _EAppMessage));

  @override
  _EAppMessage get _value => super._value as _EAppMessage;

  @override
  $Res call({
    Object posterId = freezed,
    Object message = freezed,
    Object postedAt = freezed,
  }) {
    return _then(_EAppMessage(
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      message: message == freezed ? _value.message : message as String,
      postedAt: postedAt == freezed ? _value.postedAt : postedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EAppMessage with DiagnosticableTreeMixin implements _EAppMessage {
  _$_EAppMessage(
      {@required this.posterId,
      @required this.message,
      @required this.postedAt})
      : assert(posterId != null),
        assert(message != null),
        assert(postedAt != null);

  factory _$_EAppMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_EAppMessageFromJson(json);

  @override
  final String posterId;
  @override
  final String message;
  @override
  final DateTime postedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EAppMessage(posterId: $posterId, message: $message, postedAt: $postedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EAppMessage'))
      ..add(DiagnosticsProperty('posterId', posterId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('postedAt', postedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EAppMessage &&
            (identical(other.posterId, posterId) ||
                const DeepCollectionEquality()
                    .equals(other.posterId, posterId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posterId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(postedAt);

  @override
  _$EAppMessageCopyWith<_EAppMessage> get copyWith =>
      __$EAppMessageCopyWithImpl<_EAppMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EAppMessageToJson(this);
  }
}

abstract class _EAppMessage implements EAppMessage {
  factory _EAppMessage(
      {@required String posterId,
      @required String message,
      @required DateTime postedAt}) = _$_EAppMessage;

  factory _EAppMessage.fromJson(Map<String, dynamic> json) =
      _$_EAppMessage.fromJson;

  @override
  String get posterId;
  @override
  String get message;
  @override
  DateTime get postedAt;
  @override
  _$EAppMessageCopyWith<_EAppMessage> get copyWith;
}
