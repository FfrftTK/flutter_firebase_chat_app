// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EAppRoom _$EAppRoomFromJson(Map<String, dynamic> json) {
  return _EAppRoom.fromJson(json);
}

/// @nodoc
class _$EAppRoomTearOff {
  const _$EAppRoomTearOff();

// ignore: unused_element
  _EAppRoom call(
      {@required String name,
      @required List<String> members,
      @required String roomId,
      @required DateTime updatedAt}) {
    return _EAppRoom(
      name: name,
      members: members,
      roomId: roomId,
      updatedAt: updatedAt,
    );
  }

// ignore: unused_element
  EAppRoom fromJson(Map<String, Object> json) {
    return EAppRoom.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EAppRoom = _$EAppRoomTearOff();

/// @nodoc
mixin _$EAppRoom {
  String get name;
  List<String> get members;
  String get roomId;
  DateTime get updatedAt;

  Map<String, dynamic> toJson();
  $EAppRoomCopyWith<EAppRoom> get copyWith;
}

/// @nodoc
abstract class $EAppRoomCopyWith<$Res> {
  factory $EAppRoomCopyWith(EAppRoom value, $Res Function(EAppRoom) then) =
      _$EAppRoomCopyWithImpl<$Res>;
  $Res call(
      {String name, List<String> members, String roomId, DateTime updatedAt});
}

/// @nodoc
class _$EAppRoomCopyWithImpl<$Res> implements $EAppRoomCopyWith<$Res> {
  _$EAppRoomCopyWithImpl(this._value, this._then);

  final EAppRoom _value;
  // ignore: unused_field
  final $Res Function(EAppRoom) _then;

  @override
  $Res call({
    Object name = freezed,
    Object members = freezed,
    Object roomId = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      members: members == freezed ? _value.members : members as List<String>,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$EAppRoomCopyWith<$Res> implements $EAppRoomCopyWith<$Res> {
  factory _$EAppRoomCopyWith(_EAppRoom value, $Res Function(_EAppRoom) then) =
      __$EAppRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, List<String> members, String roomId, DateTime updatedAt});
}

/// @nodoc
class __$EAppRoomCopyWithImpl<$Res> extends _$EAppRoomCopyWithImpl<$Res>
    implements _$EAppRoomCopyWith<$Res> {
  __$EAppRoomCopyWithImpl(_EAppRoom _value, $Res Function(_EAppRoom) _then)
      : super(_value, (v) => _then(v as _EAppRoom));

  @override
  _EAppRoom get _value => super._value as _EAppRoom;

  @override
  $Res call({
    Object name = freezed,
    Object members = freezed,
    Object roomId = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_EAppRoom(
      name: name == freezed ? _value.name : name as String,
      members: members == freezed ? _value.members : members as List<String>,
      roomId: roomId == freezed ? _value.roomId : roomId as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EAppRoom with DiagnosticableTreeMixin implements _EAppRoom {
  _$_EAppRoom(
      {@required this.name,
      @required this.members,
      @required this.roomId,
      @required this.updatedAt})
      : assert(name != null),
        assert(members != null),
        assert(roomId != null),
        assert(updatedAt != null);

  factory _$_EAppRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_EAppRoomFromJson(json);

  @override
  final String name;
  @override
  final List<String> members;
  @override
  final String roomId;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EAppRoom(name: $name, members: $members, roomId: $roomId, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EAppRoom'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('members', members))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EAppRoom &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.roomId, roomId) ||
                const DeepCollectionEquality().equals(other.roomId, roomId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(roomId) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$EAppRoomCopyWith<_EAppRoom> get copyWith =>
      __$EAppRoomCopyWithImpl<_EAppRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EAppRoomToJson(this);
  }
}

abstract class _EAppRoom implements EAppRoom {
  factory _EAppRoom(
      {@required String name,
      @required List<String> members,
      @required String roomId,
      @required DateTime updatedAt}) = _$_EAppRoom;

  factory _EAppRoom.fromJson(Map<String, dynamic> json) = _$_EAppRoom.fromJson;

  @override
  String get name;
  @override
  List<String> get members;
  @override
  String get roomId;
  @override
  DateTime get updatedAt;
  @override
  _$EAppRoomCopyWith<_EAppRoom> get copyWith;
}
