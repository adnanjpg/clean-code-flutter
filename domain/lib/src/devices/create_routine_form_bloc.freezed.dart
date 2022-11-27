// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_routine_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRoutineFormState {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<DeviceActionDto>? get actions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRoutineFormStateCopyWith<CreateRoutineFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoutineFormStateCopyWith<$Res> {
  factory $CreateRoutineFormStateCopyWith(CreateRoutineFormState value,
          $Res Function(CreateRoutineFormState) then) =
      _$CreateRoutineFormStateCopyWithImpl<$Res, CreateRoutineFormState>;
  @useResult
  $Res call({String? id, String? name, List<DeviceActionDto>? actions});
}

/// @nodoc
class _$CreateRoutineFormStateCopyWithImpl<$Res,
        $Val extends CreateRoutineFormState>
    implements $CreateRoutineFormStateCopyWith<$Res> {
  _$CreateRoutineFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DeviceActionDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateRoutineFormStateCopyWith<$Res>
    implements $CreateRoutineFormStateCopyWith<$Res> {
  factory _$$_CreateRoutineFormStateCopyWith(_$_CreateRoutineFormState value,
          $Res Function(_$_CreateRoutineFormState) then) =
      __$$_CreateRoutineFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<DeviceActionDto>? actions});
}

/// @nodoc
class __$$_CreateRoutineFormStateCopyWithImpl<$Res>
    extends _$CreateRoutineFormStateCopyWithImpl<$Res,
        _$_CreateRoutineFormState>
    implements _$$_CreateRoutineFormStateCopyWith<$Res> {
  __$$_CreateRoutineFormStateCopyWithImpl(_$_CreateRoutineFormState _value,
      $Res Function(_$_CreateRoutineFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$_CreateRoutineFormState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DeviceActionDto>?,
    ));
  }
}

/// @nodoc

class _$_CreateRoutineFormState implements _CreateRoutineFormState {
  _$_CreateRoutineFormState(
      {this.id, this.name, final List<DeviceActionDto>? actions})
      : _actions = actions;

  @override
  final String? id;
  @override
  final String? name;
  final List<DeviceActionDto>? _actions;
  @override
  List<DeviceActionDto>? get actions {
    final value = _actions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateRoutineFormState(id: $id, name: $name, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRoutineFormState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRoutineFormStateCopyWith<_$_CreateRoutineFormState> get copyWith =>
      __$$_CreateRoutineFormStateCopyWithImpl<_$_CreateRoutineFormState>(
          this, _$identity);
}

abstract class _CreateRoutineFormState implements CreateRoutineFormState {
  factory _CreateRoutineFormState(
      {final String? id,
      final String? name,
      final List<DeviceActionDto>? actions}) = _$_CreateRoutineFormState;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<DeviceActionDto>? get actions;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRoutineFormStateCopyWith<_$_CreateRoutineFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
