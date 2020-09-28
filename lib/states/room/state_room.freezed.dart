// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomStateTearOff {
  const _$RoomStateTearOff();

// ignore: unused_element
  _RoomState call(
      {List<EAppMessage> messages = const [],
      List<EAppUser> users = const []}) {
    return _RoomState(
      messages: messages,
      users: users,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomState = _$RoomStateTearOff();

/// @nodoc
mixin _$RoomState {
  List<EAppMessage> get messages;
  List<EAppUser> get users;

  $RoomStateCopyWith<RoomState> get copyWith;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res>;
  $Res call({List<EAppMessage> messages, List<EAppUser> users});
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res> implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  final RoomState _value;
  // ignore: unused_field
  final $Res Function(RoomState) _then;

  @override
  $Res call({
    Object messages = freezed,
    Object users = freezed,
  }) {
    return _then(_value.copyWith(
      messages:
          messages == freezed ? _value.messages : messages as List<EAppMessage>,
      users: users == freezed ? _value.users : users as List<EAppUser>,
    ));
  }
}

/// @nodoc
abstract class _$RoomStateCopyWith<$Res> implements $RoomStateCopyWith<$Res> {
  factory _$RoomStateCopyWith(
          _RoomState value, $Res Function(_RoomState) then) =
      __$RoomStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EAppMessage> messages, List<EAppUser> users});
}

/// @nodoc
class __$RoomStateCopyWithImpl<$Res> extends _$RoomStateCopyWithImpl<$Res>
    implements _$RoomStateCopyWith<$Res> {
  __$RoomStateCopyWithImpl(_RoomState _value, $Res Function(_RoomState) _then)
      : super(_value, (v) => _then(v as _RoomState));

  @override
  _RoomState get _value => super._value as _RoomState;

  @override
  $Res call({
    Object messages = freezed,
    Object users = freezed,
  }) {
    return _then(_RoomState(
      messages:
          messages == freezed ? _value.messages : messages as List<EAppMessage>,
      users: users == freezed ? _value.users : users as List<EAppUser>,
    ));
  }
}

/// @nodoc
class _$_RoomState implements _RoomState {
  const _$_RoomState({this.messages = const [], this.users = const []})
      : assert(messages != null),
        assert(users != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<EAppMessage> messages;
  @JsonKey(defaultValue: const [])
  @override
  final List<EAppUser> users;

  @override
  String toString() {
    return 'RoomState(messages: $messages, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(users);

  @override
  _$RoomStateCopyWith<_RoomState> get copyWith =>
      __$RoomStateCopyWithImpl<_RoomState>(this, _$identity);
}

abstract class _RoomState implements RoomState {
  const factory _RoomState({List<EAppMessage> messages, List<EAppUser> users}) =
      _$_RoomState;

  @override
  List<EAppMessage> get messages;
  @override
  List<EAppUser> get users;
  @override
  _$RoomStateCopyWith<_RoomState> get copyWith;
}
