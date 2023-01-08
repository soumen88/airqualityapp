// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastListModel _$ForecastListModelFromJson(Map<String, dynamic> json) {
  return _ForecastListModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastListModel {
  @JsonKey(name: "dt")
  int? get unixTimeStamp => throw _privateConstructorUsedError;
  @JsonKey(name: "main")
  WeatherMain? get weatherMain => throw _privateConstructorUsedError;
  @JsonKey(name: "weather")
  List<WeatherModel>? get weatherModelList =>
      throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  int? get pop => throw _privateConstructorUsedError;
  @JsonKey(name: "dt_txt")
  String? get currentTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastListModelCopyWith<ForecastListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastListModelCopyWith<$Res> {
  factory $ForecastListModelCopyWith(
          ForecastListModel value, $Res Function(ForecastListModel) then) =
      _$ForecastListModelCopyWithImpl<$Res, ForecastListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "dt") int? unixTimeStamp,
      @JsonKey(name: "main") WeatherMain? weatherMain,
      @JsonKey(name: "weather") List<WeatherModel>? weatherModelList,
      int? visibility,
      int? pop,
      @JsonKey(name: "dt_txt") String? currentTimestamp});

  $WeatherMainCopyWith<$Res>? get weatherMain;
}

/// @nodoc
class _$ForecastListModelCopyWithImpl<$Res, $Val extends ForecastListModel>
    implements $ForecastListModelCopyWith<$Res> {
  _$ForecastListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unixTimeStamp = freezed,
    Object? weatherMain = freezed,
    Object? weatherModelList = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? currentTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      unixTimeStamp: freezed == unixTimeStamp
          ? _value.unixTimeStamp
          : unixTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherMain: freezed == weatherMain
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as WeatherMain?,
      weatherModelList: freezed == weatherModelList
          ? _value.weatherModelList
          : weatherModelList // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      currentTimestamp: freezed == currentTimestamp
          ? _value.currentTimestamp
          : currentTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res>? get weatherMain {
    if (_value.weatherMain == null) {
      return null;
    }

    return $WeatherMainCopyWith<$Res>(_value.weatherMain!, (value) {
      return _then(_value.copyWith(weatherMain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastListModelCopyWith<$Res>
    implements $ForecastListModelCopyWith<$Res> {
  factory _$$_ForecastListModelCopyWith(_$_ForecastListModel value,
          $Res Function(_$_ForecastListModel) then) =
      __$$_ForecastListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dt") int? unixTimeStamp,
      @JsonKey(name: "main") WeatherMain? weatherMain,
      @JsonKey(name: "weather") List<WeatherModel>? weatherModelList,
      int? visibility,
      int? pop,
      @JsonKey(name: "dt_txt") String? currentTimestamp});

  @override
  $WeatherMainCopyWith<$Res>? get weatherMain;
}

/// @nodoc
class __$$_ForecastListModelCopyWithImpl<$Res>
    extends _$ForecastListModelCopyWithImpl<$Res, _$_ForecastListModel>
    implements _$$_ForecastListModelCopyWith<$Res> {
  __$$_ForecastListModelCopyWithImpl(
      _$_ForecastListModel _value, $Res Function(_$_ForecastListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unixTimeStamp = freezed,
    Object? weatherMain = freezed,
    Object? weatherModelList = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? currentTimestamp = freezed,
  }) {
    return _then(_$_ForecastListModel(
      unixTimeStamp: freezed == unixTimeStamp
          ? _value.unixTimeStamp
          : unixTimeStamp // ignore: cast_nullable_to_non_nullable
              as int?,
      weatherMain: freezed == weatherMain
          ? _value.weatherMain
          : weatherMain // ignore: cast_nullable_to_non_nullable
              as WeatherMain?,
      weatherModelList: freezed == weatherModelList
          ? _value._weatherModelList
          : weatherModelList // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      currentTimestamp: freezed == currentTimestamp
          ? _value.currentTimestamp
          : currentTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ForecastListModel implements _ForecastListModel {
  const _$_ForecastListModel(
      {@JsonKey(name: "dt")
          required this.unixTimeStamp,
      @JsonKey(name: "main")
          required this.weatherMain,
      @JsonKey(name: "weather")
          required final List<WeatherModel>? weatherModelList,
      required this.visibility,
      required this.pop,
      @JsonKey(name: "dt_txt")
          required this.currentTimestamp})
      : _weatherModelList = weatherModelList;

  factory _$_ForecastListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastListModelFromJson(json);

  @override
  @JsonKey(name: "dt")
  final int? unixTimeStamp;
  @override
  @JsonKey(name: "main")
  final WeatherMain? weatherMain;
  final List<WeatherModel>? _weatherModelList;
  @override
  @JsonKey(name: "weather")
  List<WeatherModel>? get weatherModelList {
    final value = _weatherModelList;
    if (value == null) return null;
    if (_weatherModelList is EqualUnmodifiableListView)
      return _weatherModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? visibility;
  @override
  final int? pop;
  @override
  @JsonKey(name: "dt_txt")
  final String? currentTimestamp;

  @override
  String toString() {
    return 'ForecastListModel(unixTimeStamp: $unixTimeStamp, weatherMain: $weatherMain, weatherModelList: $weatherModelList, visibility: $visibility, pop: $pop, currentTimestamp: $currentTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastListModel &&
            (identical(other.unixTimeStamp, unixTimeStamp) ||
                other.unixTimeStamp == unixTimeStamp) &&
            (identical(other.weatherMain, weatherMain) ||
                other.weatherMain == weatherMain) &&
            const DeepCollectionEquality()
                .equals(other._weatherModelList, _weatherModelList) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.currentTimestamp, currentTimestamp) ||
                other.currentTimestamp == currentTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      unixTimeStamp,
      weatherMain,
      const DeepCollectionEquality().hash(_weatherModelList),
      visibility,
      pop,
      currentTimestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastListModelCopyWith<_$_ForecastListModel> get copyWith =>
      __$$_ForecastListModelCopyWithImpl<_$_ForecastListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastListModelToJson(
      this,
    );
  }
}

abstract class _ForecastListModel implements ForecastListModel {
  const factory _ForecastListModel(
      {@JsonKey(name: "dt")
          required final int? unixTimeStamp,
      @JsonKey(name: "main")
          required final WeatherMain? weatherMain,
      @JsonKey(name: "weather")
          required final List<WeatherModel>? weatherModelList,
      required final int? visibility,
      required final int? pop,
      @JsonKey(name: "dt_txt")
          required final String? currentTimestamp}) = _$_ForecastListModel;

  factory _ForecastListModel.fromJson(Map<String, dynamic> json) =
      _$_ForecastListModel.fromJson;

  @override
  @JsonKey(name: "dt")
  int? get unixTimeStamp;
  @override
  @JsonKey(name: "main")
  WeatherMain? get weatherMain;
  @override
  @JsonKey(name: "weather")
  List<WeatherModel>? get weatherModelList;
  @override
  int? get visibility;
  @override
  int? get pop;
  @override
  @JsonKey(name: "dt_txt")
  String? get currentTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastListModelCopyWith<_$_ForecastListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
