// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryList _$CountryListFromJson(Map<String, dynamic> json) {
  return _CountryList.fromJson(json);
}

/// @nodoc
mixin _$CountryList {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CountryData>? get countryData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryListCopyWith<CountryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListCopyWith<$Res> {
  factory $CountryListCopyWith(
          CountryList value, $Res Function(CountryList) then) =
      _$CountryListCopyWithImpl<$Res, CountryList>;
  @useResult
  $Res call(
      {String? status, @JsonKey(name: "data") List<CountryData>? countryData});
}

/// @nodoc
class _$CountryListCopyWithImpl<$Res, $Val extends CountryList>
    implements $CountryListCopyWith<$Res> {
  _$CountryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? countryData = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      countryData: freezed == countryData
          ? _value.countryData
          : countryData // ignore: cast_nullable_to_non_nullable
              as List<CountryData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryListCopyWith<$Res>
    implements $CountryListCopyWith<$Res> {
  factory _$$_CountryListCopyWith(
          _$_CountryList value, $Res Function(_$_CountryList) then) =
      __$$_CountryListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, @JsonKey(name: "data") List<CountryData>? countryData});
}

/// @nodoc
class __$$_CountryListCopyWithImpl<$Res>
    extends _$CountryListCopyWithImpl<$Res, _$_CountryList>
    implements _$$_CountryListCopyWith<$Res> {
  __$$_CountryListCopyWithImpl(
      _$_CountryList _value, $Res Function(_$_CountryList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? countryData = freezed,
  }) {
    return _then(_$_CountryList(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      countryData: freezed == countryData
          ? _value._countryData
          : countryData // ignore: cast_nullable_to_non_nullable
              as List<CountryData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CountryList implements _CountryList {
  const _$_CountryList(
      {required this.status,
      @JsonKey(name: "data") required final List<CountryData>? countryData})
      : _countryData = countryData;

  factory _$_CountryList.fromJson(Map<String, dynamic> json) =>
      _$$_CountryListFromJson(json);

  @override
  final String? status;
  final List<CountryData>? _countryData;
  @override
  @JsonKey(name: "data")
  List<CountryData>? get countryData {
    final value = _countryData;
    if (value == null) return null;
    if (_countryData is EqualUnmodifiableListView) return _countryData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CountryList(status: $status, countryData: $countryData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryList &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._countryData, _countryData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_countryData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryListCopyWith<_$_CountryList> get copyWith =>
      __$$_CountryListCopyWithImpl<_$_CountryList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryListToJson(
      this,
    );
  }
}

abstract class _CountryList implements CountryList {
  const factory _CountryList(
      {required final String? status,
      @JsonKey(name: "data")
          required final List<CountryData>? countryData}) = _$_CountryList;

  factory _CountryList.fromJson(Map<String, dynamic> json) =
      _$_CountryList.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "data")
  List<CountryData>? get countryData;
  @override
  @JsonKey(ignore: true)
  _$$_CountryListCopyWith<_$_CountryList> get copyWith =>
      throw _privateConstructorUsedError;
}
