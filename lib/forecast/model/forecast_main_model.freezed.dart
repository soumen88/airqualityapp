// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_main_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastMainModel _$ForecastMainModelFromJson(Map<String, dynamic> json) {
  return _ForecastMainModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastMainModel {
  @JsonKey(name: "cod")
  String? get cod => throw _privateConstructorUsedError;
  int? get message => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<ForecastListModel>? get forecastList =>
      throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastMainModelCopyWith<ForecastMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastMainModelCopyWith<$Res> {
  factory $ForecastMainModelCopyWith(
          ForecastMainModel value, $Res Function(ForecastMainModel) then) =
      _$ForecastMainModelCopyWithImpl<$Res, ForecastMainModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "cod") String? cod,
      int? message,
      int? cnt,
      @JsonKey(name: "list") List<ForecastListModel>? forecastList,
      CityModel? city});

  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$ForecastMainModelCopyWithImpl<$Res, $Val extends ForecastMainModel>
    implements $ForecastMainModelCopyWith<$Res> {
  _$ForecastMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? forecastList = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      forecastList: freezed == forecastList
          ? _value.forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as List<ForecastListModel>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastMainModelCopyWith<$Res>
    implements $ForecastMainModelCopyWith<$Res> {
  factory _$$_ForecastMainModelCopyWith(_$_ForecastMainModel value,
          $Res Function(_$_ForecastMainModel) then) =
      __$$_ForecastMainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cod") String? cod,
      int? message,
      int? cnt,
      @JsonKey(name: "list") List<ForecastListModel>? forecastList,
      CityModel? city});

  @override
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_ForecastMainModelCopyWithImpl<$Res>
    extends _$ForecastMainModelCopyWithImpl<$Res, _$_ForecastMainModel>
    implements _$$_ForecastMainModelCopyWith<$Res> {
  __$$_ForecastMainModelCopyWithImpl(
      _$_ForecastMainModel _value, $Res Function(_$_ForecastMainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? forecastList = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_ForecastMainModel(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      forecastList: freezed == forecastList
          ? _value._forecastList
          : forecastList // ignore: cast_nullable_to_non_nullable
              as List<ForecastListModel>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ForecastMainModel implements _ForecastMainModel {
  const _$_ForecastMainModel(
      {@JsonKey(name: "cod")
          required this.cod,
      required this.message,
      required this.cnt,
      @JsonKey(name: "list")
          required final List<ForecastListModel>? forecastList,
      required this.city})
      : _forecastList = forecastList;

  factory _$_ForecastMainModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastMainModelFromJson(json);

  @override
  @JsonKey(name: "cod")
  final String? cod;
  @override
  final int? message;
  @override
  final int? cnt;
  final List<ForecastListModel>? _forecastList;
  @override
  @JsonKey(name: "list")
  List<ForecastListModel>? get forecastList {
    final value = _forecastList;
    if (value == null) return null;
    if (_forecastList is EqualUnmodifiableListView) return _forecastList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CityModel? city;

  @override
  String toString() {
    return 'ForecastMainModel(cod: $cod, message: $message, cnt: $cnt, forecastList: $forecastList, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastMainModel &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality()
                .equals(other._forecastList, _forecastList) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_forecastList), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastMainModelCopyWith<_$_ForecastMainModel> get copyWith =>
      __$$_ForecastMainModelCopyWithImpl<_$_ForecastMainModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastMainModelToJson(
      this,
    );
  }
}

abstract class _ForecastMainModel implements ForecastMainModel {
  const factory _ForecastMainModel(
      {@JsonKey(name: "cod")
          required final String? cod,
      required final int? message,
      required final int? cnt,
      @JsonKey(name: "list")
          required final List<ForecastListModel>? forecastList,
      required final CityModel? city}) = _$_ForecastMainModel;

  factory _ForecastMainModel.fromJson(Map<String, dynamic> json) =
      _$_ForecastMainModel.fromJson;

  @override
  @JsonKey(name: "cod")
  String? get cod;
  @override
  int? get message;
  @override
  int? get cnt;
  @override
  @JsonKey(name: "list")
  List<ForecastListModel>? get forecastList;
  @override
  CityModel? get city;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastMainModelCopyWith<_$_ForecastMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
