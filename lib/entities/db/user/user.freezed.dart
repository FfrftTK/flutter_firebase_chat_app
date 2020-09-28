// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EDBUser _$EDBUserFromJson(Map<String, dynamic> json) {
  return _EDBUser.fromJson(json);
}

/// @nodoc
class _$EDBUserTearOff {
  const _$EDBUserTearOff();

// ignore: unused_element
  _EDBUser call({@required String id, String name, @required String email}) {
    return _EDBUser(
      id: id,
      name: name,
      email: email,
    );
  }

// ignore: unused_element
  EDBUser fromJson(Map<String, Object> json) {
    return EDBUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EDBUser = _$EDBUserTearOff();

/// @nodoc
mixin _$EDBUser {
  String get id;
  String get name;
  String get email;

  Map<String, dynamic> toJson();
  $EDBUserCopyWith<EDBUser> get copyWith;
}

/// @nodoc
abstract class $EDBUserCopyWith<$Res> {
  factory $EDBUserCopyWith(EDBUser value, $Res Function(EDBUser) then) =
      _$EDBUserCopyWithImpl<$Res>;
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$EDBUserCopyWithImpl<$Res> implements $EDBUserCopyWith<$Res> {
  _$EDBUserCopyWithImpl(this._value, this._then);

  final EDBUser _value;
  // ignore: unused_field
  final $Res Function(EDBUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$EDBUserCopyWith<$Res> implements $EDBUserCopyWith<$Res> {
  factory _$EDBUserCopyWith(_EDBUser value, $Res Function(_EDBUser) then) =
      __$EDBUserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$EDBUserCopyWithImpl<$Res> extends _$EDBUserCopyWithImpl<$Res>
    implements _$EDBUserCopyWith<$Res> {
  __$EDBUserCopyWithImpl(_EDBUser _value, $Res Function(_EDBUser) _then)
      : super(_value, (v) => _then(v as _EDBUser));

  @override
  _EDBUser get _value => super._value as _EDBUser;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_EDBUser(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EDBUser with DiagnosticableTreeMixin implements _EDBUser {
  _$_EDBUser({@required this.id, this.name, @required this.email})
      : assert(id != null),
        assert(email != null);

  factory _$_EDBUser.fromJson(Map<String, dynamic> json) =>
      _$_$_EDBUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EDBUser(id: $id, name: $name, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EDBUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EDBUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$EDBUserCopyWith<_EDBUser> get copyWith =>
      __$EDBUserCopyWithImpl<_EDBUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EDBUserToJson(this);
  }
}

abstract class _EDBUser implements EDBUser {
  factory _EDBUser({@required String id, String name, @required String email}) =
      _$_EDBUser;

  factory _EDBUser.fromJson(Map<String, dynamic> json) = _$_EDBUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  _$EDBUserCopyWith<_EDBUser> get copyWith;
}
