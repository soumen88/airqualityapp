// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_pollution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirPollutionModel _$AirPollutionModelFromJson(Map<String, dynamic> json) {
  return _AirPollutionModel.fromJson(json);
}

/// @nodoc
mixin _$AirPollutionModel {
  @JsonKey(name: "coord")
  CoordinatesData? get coordinatesData => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<AirIndexModel>? get airIndexModelList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirPollutionModelCopyWith<AirPollutionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirPollutionModelCopyWith<$Res> {
  factory $AirPollutionModelCopyWith(
          AirPollutionModel value, $Res Function(AirPollutionModel) then) =
      _$AirPollutionModelCopyWithImpl<$Res, AirPollutionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "coord") CoordinatesData? coordinatesData,
      @JsonKey(name: "list") List<AirIndexModel>? airIndexModelList});

  $CoordinatesDataCopyWith<$Res>? get coordinatesData;
}

/// @nodoc
class _$AirPollutionModelCopyWithImpl<$Res, $Val extends AirPollutionModel>
    implements $AirPollutionModelCopyWith<$Res> {
  _$AirPollutionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinatesData = freezed,
    Object? airIndexModelList = freezed,
  }) {
    return _then(_value.copyWith(
      coordinatesData: freezed == coordinatesData
          ? _value.coordinatesData
          : coordinatesData // ignore: cast_nullable_to_non_nullable
              as CoordinatesData?,
      airIndexModelList: freezed == airIndexModelList
          ? _value.airIndexModelList
          : airIndexModelList // ignore: cast_nullable_to_non_nullable
              as List<AirIndexModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesDataCopyWith<$Res>? get coordinatesData {
    if (_value.coordinatesData == null) {
      return null;
    }

    return $CoordinatesDataCopyWith<$Res>(_value.coordinatesData!, (value) {
      return _then(_value.copyWith(coordinatesData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AirPollutionModelCopyWith<$Res>
    implements $AirPollutionModelCopyWith<$Res> {
  factory _$$_AirPollutionModelCopyWith(_$_AirPollutionModel value,
          $Res Function(_$_AirPollutionModel) then) =
      __$$_AirPollutionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "coord") CoordinatesData? coordinatesData,
      @JsonKey(name: "list") List<AirIndexModel>? airIndexModelList});

  @override
  $CoordinatesDataCopyWith<$Res>? get coordinatesData;
}

/// @nodoc
class __$$_AirPollutionModelCopyWithImpl<$Res>
    extends _$AirPollutionModelCopyWithImpl<$Res, _$_AirPollutionModel>
    implements _$$_AirPollutionModelCopyWith<$Res> {
  __$$_AirPollutionModelCopyWithImpl(
      _$_AirPollutionModel _value, $Res Function(_$_AirPollutionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinatesData = freezed,
    Object? airIndexModelList = freezed,
  }) {
    return _then(_$_AirPollutionModel(
      coordinatesData: freezed == coordinatesData
          ? _value.coordinatesData
          : coordinatesData // ignore: cast_nullable_to_non_nullable
              as CoordinatesData?,
      airIndexModelList: freezed == airIndexModelList
          ? _value._airIndexModelList
          : airIndexModelList // ignore: cast_nullable_to_non_nullable
              as List<AirIndexModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AirPollutionModel implements _AirPollutionModel {
  const _$_AirPollutionModel(
      {@JsonKey(name: "coord")
          required this.coordinatesData,
      @JsonKey(name: "list")
          required final List<AirIndexModel>? airIndexModelList})
      : _airIndexModelList = airIndexModelList;

  factory _$_AirPollutionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AirPollutionModelFromJson(json);

  @override
  @JsonKey(name: "coord")
  final CoordinatesData? coordinatesData;
  final List<AirIndexModel>? _airIndexModelList;
  @override
  @JsonKey(name: "list")
  List<AirIndexModel>? get airIndexModelList {
    final value = _airIndexModelList;
    if (value == null) return null;
    if (_airIndexModelList is EqualUnmodifiableListView)
      return _airIndexModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AirPollutionModel(coordinatesData: $coordinatesData, airIndexModelList: $airIndexModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirPollutionModel &&
            (identical(other.coordinatesData, coordinatesData) ||
                other.coordinatesData == coordinatesData) &&
            const DeepCollectionEquality()
                .equals(other._airIndexModelList, _airIndexModelList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coordinatesData,
      const DeepCollectionEquality().hash(_airIndexModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirPollutionModelCopyWith<_$_AirPollutionModel> get copyWith =>
      __$$_AirPollutionModelCopyWithImpl<_$_AirPollutionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirPollutionModelToJson(
      this,
    );
  }
}

abstract class _AirPollutionModel implements AirPollutionModel {
  const factory _AirPollutionModel(
          {@JsonKey(name: "coord")
              required final CoordinatesData? coordinatesData,
          @JsonKey(name: "list")
              required final List<AirIndexModel>? airIndexModelList}) =
      _$_AirPollutionModel;

  factory _AirPollutionModel.fromJson(Map<String, dynamic> json) =
      _$_AirPollutionModel.fromJson;

  @override
  @JsonKey(name: "coord")
  CoordinatesData? get coordinatesData;
  @override
  @JsonKey(name: "list")
  List<AirIndexModel>? get airIndexModelList;
  @override
  @JsonKey(ignore: true)
  _$$_AirPollutionModelCopyWith<_$_AirPollutionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
