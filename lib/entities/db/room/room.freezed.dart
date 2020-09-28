// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EDBRoom _$EDBRoomFromJson(Map<String, dynamic> json) {
  return _EDBRoom.fromJson(json);
}

/// @nodoc
class _$EDBRoomTearOff {
  const _$EDBRoomTearOff();

// ignore: unused_element
  _EDBRoom call({@required String name, @required List<String> members}) {
    return _EDBRoom(
      name: name,
      members: members,
    );
  }

// ignore: unused_element
  EDBRoom fromJson(Map<String, Object> json) {
    return EDBRoom.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EDBRoom = _$EDBRoomTearOff();

/// @nodoc
mixin _$EDBRoom {
  String get name;
  List<String> get members;

  Map<String, dynamic> toJson();
  $EDBRoomCopyWith<EDBRoom> get copyWith;
}

/// @nodoc
abstract class $EDBRoomCopyWith<$Res> {
  factory $EDBRoomCopyWith(EDBRoom value, $Res Function(EDBRoom) then) =
      _$EDBRoomCopyWithImpl<$Res>;
  $Res call({String name, List<String> members});
}

/// @nodoc
class _$EDBRoomCopyWithImpl<$Res> implements $EDBRoomCopyWith<$Res> {
  _$EDBRoomCopyWithImpl(this._value, this._then);

  final EDBRoom _value;
  // ignore: unused_field
  final $Res Function(EDBRoom) _then;

  @override
  $Res call({
    Object name = freezed,
    Object members = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      members: members == freezed ? _value.members : members as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$EDBRoomCopyWith<$Res> implements $EDBRoomCopyWith<$Res> {
  factory _$EDBRoomCopyWith(_EDBRoom value, $Res Function(_EDBRoom) then) =
      __$EDBRoomCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> members});
}

/// @nodoc
class __$EDBRoomCopyWithImpl<$Res> extends _$EDBRoomCopyWithImpl<$Res>
    implements _$EDBRoomCopyWith<$Res> {
  __$EDBRoomCopyWithImpl(_EDBRoom _value, $Res Function(_EDBRoom) _then)
      : super(_value, (v) => _then(v as _EDBRoom));

  @override
  _EDBRoom get _value => super._value as _EDBRoom;

  @override
  $Res call({
    Object name = freezed,
    Object members = freezed,
  }) {
    return _then(_EDBRoom(
      name: name == freezed ? _value.name : name as String,
      members: members == freezed ? _value.members : members as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EDBRoom with DiagnosticableTreeMixin implements _EDBRoom {
  _$_EDBRoom({@required this.name, @required this.members})
      : assert(name != null),
        assert(members != null);

  factory _$_EDBRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_EDBRoomFromJson(json);

  @override
  final String name;
  @override
  final List<String> members;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EDBRoom(name: $name, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EDBRoom'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EDBRoom &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(members);

  @override
  _$EDBRoomCopyWith<_EDBRoom> get copyWith =>
      __$EDBRoomCopyWithImpl<_EDBRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EDBRoomToJson(this);
  }
}

abstract class _EDBRoom implements EDBRoom {
  factory _EDBRoom({@required String name, @required List<String> members}) =
      _$_EDBRoom;

  factory _EDBRoom.fromJson(Map<String, dynamic> json) = _$_EDBRoom.fromJson;

  @override
  String get name;
  @override
  List<String> get members;
  @override
  _$EDBRoomCopyWith<_EDBRoom> get copyWith;
}
