// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EAppUser _$EAppUserFromJson(Map<String, dynamic> json) {
  return _EAppUser.fromJson(json);
}

/// @nodoc
class _$EAppUserTearOff {
  const _$EAppUserTearOff();

// ignore: unused_element
  _EAppUser call({@required String id, String name, @required String email}) {
    return _EAppUser(
      id: id,
      name: name,
      email: email,
    );
  }

// ignore: unused_element
  EAppUser fromJson(Map<String, Object> json) {
    return EAppUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EAppUser = _$EAppUserTearOff();

/// @nodoc
mixin _$EAppUser {
  String get id;
  String get name;
  String get email;

  Map<String, dynamic> toJson();
  $EAppUserCopyWith<EAppUser> get copyWith;
}

/// @nodoc
abstract class $EAppUserCopyWith<$Res> {
  factory $EAppUserCopyWith(EAppUser value, $Res Function(EAppUser) then) =
      _$EAppUserCopyWithImpl<$Res>;
  $Res call({String id, String name, String email});
}

/// @nodoc
class _$EAppUserCopyWithImpl<$Res> implements $EAppUserCopyWith<$Res> {
  _$EAppUserCopyWithImpl(this._value, this._then);

  final EAppUser _value;
  // ignore: unused_field
  final $Res Function(EAppUser) _then;

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
abstract class _$EAppUserCopyWith<$Res> implements $EAppUserCopyWith<$Res> {
  factory _$EAppUserCopyWith(_EAppUser value, $Res Function(_EAppUser) then) =
      __$EAppUserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String email});
}

/// @nodoc
class __$EAppUserCopyWithImpl<$Res> extends _$EAppUserCopyWithImpl<$Res>
    implements _$EAppUserCopyWith<$Res> {
  __$EAppUserCopyWithImpl(_EAppUser _value, $Res Function(_EAppUser) _then)
      : super(_value, (v) => _then(v as _EAppUser));

  @override
  _EAppUser get _value => super._value as _EAppUser;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
  }) {
    return _then(_EAppUser(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EAppUser with DiagnosticableTreeMixin implements _EAppUser {
  _$_EAppUser({@required this.id, this.name, @required this.email})
      : assert(id != null),
        assert(email != null);

  factory _$_EAppUser.fromJson(Map<String, dynamic> json) =>
      _$_$_EAppUserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EAppUser(id: $id, name: $name, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EAppUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EAppUser &&
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
  _$EAppUserCopyWith<_EAppUser> get copyWith =>
      __$EAppUserCopyWithImpl<_EAppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EAppUserToJson(this);
  }
}

abstract class _EAppUser implements EAppUser {
  factory _EAppUser(
      {@required String id, String name, @required String email}) = _$_EAppUser;

  factory _EAppUser.fromJson(Map<String, dynamic> json) = _$_EAppUser.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  _$EAppUserCopyWith<_EAppUser> get copyWith;
}
