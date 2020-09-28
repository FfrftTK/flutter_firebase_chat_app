// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'state_home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {List<EAppRoom> rooms = const [], List<EAppUser> friends = const []}) {
    return _HomeState(
      rooms: rooms,
      friends: friends,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<EAppRoom> get rooms; // TODO(FfrftTK): Implement
  List<EAppUser> get friends;

  $HomeStateCopyWith<HomeState> get copyWith;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({List<EAppRoom> rooms, List<EAppUser> friends});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object rooms = freezed,
    Object friends = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: rooms == freezed ? _value.rooms : rooms as List<EAppRoom>,
      friends: friends == freezed ? _value.friends : friends as List<EAppUser>,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<EAppRoom> rooms, List<EAppUser> friends});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object rooms = freezed,
    Object friends = freezed,
  }) {
    return _then(_HomeState(
      rooms: rooms == freezed ? _value.rooms : rooms as List<EAppRoom>,
      friends: friends == freezed ? _value.friends : friends as List<EAppUser>,
    ));
  }
}

/// @nodoc
class _$_HomeState implements _HomeState {
  const _$_HomeState({this.rooms = const [], this.friends = const []})
      : assert(rooms != null),
        assert(friends != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<EAppRoom> rooms;
  @JsonKey(defaultValue: const [])
  @override // TODO(FfrftTK): Implement
  final List<EAppUser> friends;

  @override
  String toString() {
    return 'HomeState(rooms: $rooms, friends: $friends)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)) &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality().equals(other.friends, friends)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rooms) ^
      const DeepCollectionEquality().hash(friends);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({List<EAppRoom> rooms, List<EAppUser> friends}) =
      _$_HomeState;

  @override
  List<EAppRoom> get rooms;
  @override // TODO(FfrftTK): Implement
  List<EAppUser> get friends;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
