// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  @JsonKey(name: "country")
  String? get countryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDataCopyWith<CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
          CountryData value, $Res Function(CountryData) then) =
      _$CountryDataCopyWithImpl<$Res, CountryData>;
  @useResult
  $Res call({@JsonKey(name: "country") String? countryName});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res, $Val extends CountryData>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDataCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$_CountryDataCopyWith(
          _$_CountryData value, $Res Function(_$_CountryData) then) =
      __$$_CountryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "country") String? countryName});
}

/// @nodoc
class __$$_CountryDataCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$_CountryData>
    implements _$$_CountryDataCopyWith<$Res> {
  __$$_CountryDataCopyWithImpl(
      _$_CountryData _value, $Res Function(_$_CountryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(_$_CountryData(
      countryName: freezed == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CountryData implements _CountryData {
  const _$_CountryData({@JsonKey(name: "country") required this.countryName});

  factory _$_CountryData.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDataFromJson(json);

  @override
  @JsonKey(name: "country")
  final String? countryName;

  @override
  String toString() {
    return 'CountryData(countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryData &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDataCopyWith<_$_CountryData> get copyWith =>
      __$$_CountryDataCopyWithImpl<_$_CountryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDataToJson(
      this,
    );
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData(
          {@JsonKey(name: "country") required final String? countryName}) =
      _$_CountryData;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$_CountryData.fromJson;

  @override
  @JsonKey(name: "country")
  String? get countryName;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDataCopyWith<_$_CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}
