// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'co_ordinates_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoordinatesData _$CoordinatesDataFromJson(Map<String, dynamic> json) {
  return _CoordinatesData.fromJson(json);
}

/// @nodoc
mixin _$CoordinatesData {
  @JsonKey(name: "lon")
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesDataCopyWith<CoordinatesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesDataCopyWith<$Res> {
  factory $CoordinatesDataCopyWith(
          CoordinatesData value, $Res Function(CoordinatesData) then) =
      _$CoordinatesDataCopyWithImpl<$Res, CoordinatesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "lon") double? longitude,
      @JsonKey(name: "lat") double? latitude});
}

/// @nodoc
class _$CoordinatesDataCopyWithImpl<$Res, $Val extends CoordinatesData>
    implements $CoordinatesDataCopyWith<$Res> {
  _$CoordinatesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordinatesDataCopyWith<$Res>
    implements $CoordinatesDataCopyWith<$Res> {
  factory _$$_CoordinatesDataCopyWith(
          _$_CoordinatesData value, $Res Function(_$_CoordinatesData) then) =
      __$$_CoordinatesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lon") double? longitude,
      @JsonKey(name: "lat") double? latitude});
}

/// @nodoc
class __$$_CoordinatesDataCopyWithImpl<$Res>
    extends _$CoordinatesDataCopyWithImpl<$Res, _$_CoordinatesData>
    implements _$$_CoordinatesDataCopyWith<$Res> {
  __$$_CoordinatesDataCopyWithImpl(
      _$_CoordinatesData _value, $Res Function(_$_CoordinatesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_CoordinatesData(
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CoordinatesData implements _CoordinatesData {
  const _$_CoordinatesData(
      {@JsonKey(name: "lon") required this.longitude,
      @JsonKey(name: "lat") required this.latitude});

  factory _$_CoordinatesData.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinatesDataFromJson(json);

  @override
  @JsonKey(name: "lon")
  final double? longitude;
  @override
  @JsonKey(name: "lat")
  final double? latitude;

  @override
  String toString() {
    return 'CoordinatesData(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoordinatesData &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordinatesDataCopyWith<_$_CoordinatesData> get copyWith =>
      __$$_CoordinatesDataCopyWithImpl<_$_CoordinatesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinatesDataToJson(
      this,
    );
  }
}

abstract class _CoordinatesData implements CoordinatesData {
  const factory _CoordinatesData(
          {@JsonKey(name: "lon") required final double? longitude,
          @JsonKey(name: "lat") required final double? latitude}) =
      _$_CoordinatesData;

  factory _CoordinatesData.fromJson(Map<String, dynamic> json) =
      _$_CoordinatesData.fromJson;

  @override
  @JsonKey(name: "lon")
  double? get longitude;
  @override
  @JsonKey(name: "lat")
  double? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinatesDataCopyWith<_$_CoordinatesData> get copyWith =>
      throw _privateConstructorUsedError;
}
