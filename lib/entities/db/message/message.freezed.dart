// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EDBMessage _$EDBMessageFromJson(Map<String, dynamic> json) {
  return _EDBMessage.fromJson(json);
}

/// @nodoc
class _$EDBMessageTearOff {
  const _$EDBMessageTearOff();

// ignore: unused_element
  _EDBMessage call({@required String posterId, @required String message}) {
    return _EDBMessage(
      posterId: posterId,
      message: message,
    );
  }

// ignore: unused_element
  EDBMessage fromJson(Map<String, Object> json) {
    return EDBMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EDBMessage = _$EDBMessageTearOff();

/// @nodoc
mixin _$EDBMessage {
  String get posterId;
  String get message;

  Map<String, dynamic> toJson();
  $EDBMessageCopyWith<EDBMessage> get copyWith;
}

/// @nodoc
abstract class $EDBMessageCopyWith<$Res> {
  factory $EDBMessageCopyWith(
          EDBMessage value, $Res Function(EDBMessage) then) =
      _$EDBMessageCopyWithImpl<$Res>;
  $Res call({String posterId, String message});
}

/// @nodoc
class _$EDBMessageCopyWithImpl<$Res> implements $EDBMessageCopyWith<$Res> {
  _$EDBMessageCopyWithImpl(this._value, this._then);

  final EDBMessage _value;
  // ignore: unused_field
  final $Res Function(EDBMessage) _then;

  @override
  $Res call({
    Object posterId = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$EDBMessageCopyWith<$Res> implements $EDBMessageCopyWith<$Res> {
  factory _$EDBMessageCopyWith(
          _EDBMessage value, $Res Function(_EDBMessage) then) =
      __$EDBMessageCopyWithImpl<$Res>;
  @override
  $Res call({String posterId, String message});
}

/// @nodoc
class __$EDBMessageCopyWithImpl<$Res> extends _$EDBMessageCopyWithImpl<$Res>
    implements _$EDBMessageCopyWith<$Res> {
  __$EDBMessageCopyWithImpl(
      _EDBMessage _value, $Res Function(_EDBMessage) _then)
      : super(_value, (v) => _then(v as _EDBMessage));

  @override
  _EDBMessage get _value => super._value as _EDBMessage;

  @override
  $Res call({
    Object posterId = freezed,
    Object message = freezed,
  }) {
    return _then(_EDBMessage(
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EDBMessage with DiagnosticableTreeMixin implements _EDBMessage {
  _$_EDBMessage({@required this.posterId, @required this.message})
      : assert(posterId != null),
        assert(message != null);

  factory _$_EDBMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_EDBMessageFromJson(json);

  @override
  final String posterId;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EDBMessage(posterId: $posterId, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EDBMessage'))
      ..add(DiagnosticsProperty('posterId', posterId))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EDBMessage &&
            (identical(other.posterId, posterId) ||
                const DeepCollectionEquality()
                    .equals(other.posterId, posterId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posterId) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$EDBMessageCopyWith<_EDBMessage> get copyWith =>
      __$EDBMessageCopyWithImpl<_EDBMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EDBMessageToJson(this);
  }
}

abstract class _EDBMessage implements EDBMessage {
  factory _EDBMessage({@required String posterId, @required String message}) =
      _$_EDBMessage;

  factory _EDBMessage.fromJson(Map<String, dynamic> json) =
      _$_EDBMessage.fromJson;

  @override
  String get posterId;
  @override
  String get message;
  @override
  _$EDBMessageCopyWith<_EDBMessage> get copyWith;
}
