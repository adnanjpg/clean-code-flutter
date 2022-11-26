// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'routine_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutineDto _$RoutineDtoFromJson(Map<String, dynamic> json) {
  return _RoutineDto.fromJson(json);
}

/// @nodoc
mixin _$RoutineDto {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<DeviceActionDto> get actions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineDtoCopyWith<RoutineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineDtoCopyWith<$Res> {
  factory $RoutineDtoCopyWith(
          RoutineDto value, $Res Function(RoutineDto) then) =
      _$RoutineDtoCopyWithImpl<$Res, RoutineDto>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<DeviceActionDto> actions});
}

/// @nodoc
class _$RoutineDtoCopyWithImpl<$Res, $Val extends RoutineDto>
    implements $RoutineDtoCopyWith<$Res> {
  _$RoutineDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DeviceActionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoutineDtoCopyWith<$Res>
    implements $RoutineDtoCopyWith<$Res> {
  factory _$$_RoutineDtoCopyWith(
          _$_RoutineDto value, $Res Function(_$_RoutineDto) then) =
      __$$_RoutineDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) List<DeviceActionDto> actions});
}

/// @nodoc
class __$$_RoutineDtoCopyWithImpl<$Res>
    extends _$RoutineDtoCopyWithImpl<$Res, _$_RoutineDto>
    implements _$$_RoutineDtoCopyWith<$Res> {
  __$$_RoutineDtoCopyWithImpl(
      _$_RoutineDto _value, $Res Function(_$_RoutineDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? actions = null,
  }) {
    return _then(_$_RoutineDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<DeviceActionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutineDto extends _RoutineDto {
  _$_RoutineDto(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required final List<DeviceActionDto> actions})
      : _actions = actions,
        super._();

  factory _$_RoutineDto.fromJson(Map<String, dynamic> json) =>
      _$$_RoutineDtoFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  final List<DeviceActionDto> _actions;
  @override
  @HiveField(2)
  List<DeviceActionDto> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'RoutineDto(id: $id, name: $name, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutineDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoutineDtoCopyWith<_$_RoutineDto> get copyWith =>
      __$$_RoutineDtoCopyWithImpl<_$_RoutineDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutineDtoToJson(
      this,
    );
  }
}

abstract class _RoutineDto extends RoutineDto {
  factory _RoutineDto(
          {@HiveField(0) required final String id,
          @HiveField(1) required final String name,
          @HiveField(2) required final List<DeviceActionDto> actions}) =
      _$_RoutineDto;
  _RoutineDto._() : super._();

  factory _RoutineDto.fromJson(Map<String, dynamic> json) =
      _$_RoutineDto.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<DeviceActionDto> get actions;
  @override
  @JsonKey(ignore: true)
  _$$_RoutineDtoCopyWith<_$_RoutineDto> get copyWith =>
      throw _privateConstructorUsedError;
}
