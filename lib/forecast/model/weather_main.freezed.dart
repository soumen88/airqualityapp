// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) {
  return _WeatherMain.fromJson(json);
}

/// @nodoc
mixin _$WeatherMain {
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_min")
  double? get minTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_max")
  double? get maxTemperature => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherMainCopyWith<WeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainCopyWith<$Res> {
  factory $WeatherMainCopyWith(
          WeatherMain value, $Res Function(WeatherMain) then) =
      _$WeatherMainCopyWithImpl<$Res, WeatherMain>;
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: "temp_min") double? minTemperature,
      @JsonKey(name: "temp_max") double? maxTemperature,
      int? humidity});
}

/// @nodoc
class _$WeatherMainCopyWithImpl<$Res, $Val extends WeatherMain>
    implements $WeatherMainCopyWith<$Res> {
  _$WeatherMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? minTemperature = freezed,
    Object? maxTemperature = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherMainCopyWith<$Res>
    implements $WeatherMainCopyWith<$Res> {
  factory _$$_WeatherMainCopyWith(
          _$_WeatherMain value, $Res Function(_$_WeatherMain) then) =
      __$$_WeatherMainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: "temp_min") double? minTemperature,
      @JsonKey(name: "temp_max") double? maxTemperature,
      int? humidity});
}

/// @nodoc
class __$$_WeatherMainCopyWithImpl<$Res>
    extends _$WeatherMainCopyWithImpl<$Res, _$_WeatherMain>
    implements _$$_WeatherMainCopyWith<$Res> {
  __$$_WeatherMainCopyWithImpl(
      _$_WeatherMain _value, $Res Function(_$_WeatherMain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? minTemperature = freezed,
    Object? maxTemperature = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$_WeatherMain(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      minTemperature: freezed == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemperature: freezed == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherMain implements _WeatherMain {
  const _$_WeatherMain(
      {required this.temp,
      @JsonKey(name: "temp_min") required this.minTemperature,
      @JsonKey(name: "temp_max") required this.maxTemperature,
      required this.humidity});

  factory _$_WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherMainFromJson(json);

  @override
  final double? temp;
  @override
  @JsonKey(name: "temp_min")
  final double? minTemperature;
  @override
  @JsonKey(name: "temp_max")
  final double? maxTemperature;
  @override
  final int? humidity;

  @override
  String toString() {
    return 'WeatherMain(temp: $temp, minTemperature: $minTemperature, maxTemperature: $maxTemperature, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherMain &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temp, minTemperature, maxTemperature, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherMainCopyWith<_$_WeatherMain> get copyWith =>
      __$$_WeatherMainCopyWithImpl<_$_WeatherMain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherMainToJson(
      this,
    );
  }
}

abstract class _WeatherMain implements WeatherMain {
  const factory _WeatherMain(
      {required final double? temp,
      @JsonKey(name: "temp_min") required final double? minTemperature,
      @JsonKey(name: "temp_max") required final double? maxTemperature,
      required final int? humidity}) = _$_WeatherMain;

  factory _WeatherMain.fromJson(Map<String, dynamic> json) =
      _$_WeatherMain.fromJson;

  @override
  double? get temp;
  @override
  @JsonKey(name: "temp_min")
  double? get minTemperature;
  @override
  @JsonKey(name: "temp_max")
  double? get maxTemperature;
  @override
  int? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherMainCopyWith<_$_WeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}
