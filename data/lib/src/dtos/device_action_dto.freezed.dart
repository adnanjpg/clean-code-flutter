// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_action_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceActionDto _$DeviceActionDtoFromJson(Map<String, dynamic> json) {
  return _DeviceActionDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceActionDto {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  OtherDeviceType get deviceType => throw _privateConstructorUsedError;
  @HiveField(2)
  String get actionName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceActionDtoCopyWith<DeviceActionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceActionDtoCopyWith<$Res> {
  factory $DeviceActionDtoCopyWith(
          DeviceActionDto value, $Res Function(DeviceActionDto) then) =
      _$DeviceActionDtoCopyWithImpl<$Res, DeviceActionDto>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) OtherDeviceType deviceType,
      @HiveField(2) String actionName});
}

/// @nodoc
class _$DeviceActionDtoCopyWithImpl<$Res, $Val extends DeviceActionDto>
    implements $DeviceActionDtoCopyWith<$Res> {
  _$DeviceActionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceType = null,
    Object? actionName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as OtherDeviceType,
      actionName: null == actionName
          ? _value.actionName
          : actionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeviceActionDtoCopyWith<$Res>
    implements $DeviceActionDtoCopyWith<$Res> {
  factory _$$_DeviceActionDtoCopyWith(
          _$_DeviceActionDto value, $Res Function(_$_DeviceActionDto) then) =
      __$$_DeviceActionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) OtherDeviceType deviceType,
      @HiveField(2) String actionName});
}

/// @nodoc
class __$$_DeviceActionDtoCopyWithImpl<$Res>
    extends _$DeviceActionDtoCopyWithImpl<$Res, _$_DeviceActionDto>
    implements _$$_DeviceActionDtoCopyWith<$Res> {
  __$$_DeviceActionDtoCopyWithImpl(
      _$_DeviceActionDto _value, $Res Function(_$_DeviceActionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceType = null,
    Object? actionName = null,
  }) {
    return _then(_$_DeviceActionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as OtherDeviceType,
      actionName: null == actionName
          ? _value.actionName
          : actionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceActionDto extends _DeviceActionDto {
  _$_DeviceActionDto(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.deviceType,
      @HiveField(2) required this.actionName})
      : super._();

  factory _$_DeviceActionDto.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceActionDtoFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final OtherDeviceType deviceType;
  @override
  @HiveField(2)
  final String actionName;

  @override
  String toString() {
    return 'DeviceActionDto(id: $id, deviceType: $deviceType, actionName: $actionName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceActionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.actionName, actionName) ||
                other.actionName == actionName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceType, actionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceActionDtoCopyWith<_$_DeviceActionDto> get copyWith =>
      __$$_DeviceActionDtoCopyWithImpl<_$_DeviceActionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceActionDtoToJson(
      this,
    );
  }
}

abstract class _DeviceActionDto extends DeviceActionDto {
  factory _DeviceActionDto(
      {@HiveField(0) required final String id,
      @HiveField(1) required final OtherDeviceType deviceType,
      @HiveField(2) required final String actionName}) = _$_DeviceActionDto;
  _DeviceActionDto._() : super._();

  factory _DeviceActionDto.fromJson(Map<String, dynamic> json) =
      _$_DeviceActionDto.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  OtherDeviceType get deviceType;
  @override
  @HiveField(2)
  String get actionName;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceActionDtoCopyWith<_$_DeviceActionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
