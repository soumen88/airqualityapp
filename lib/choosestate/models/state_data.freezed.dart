// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateData _$StateDataFromJson(Map<String, dynamic> json) {
  return _StateData.fromJson(json);
}

/// @nodoc
mixin _$StateData {
  @JsonKey(name: "state")
  String? get stateName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateDataCopyWith<StateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateDataCopyWith<$Res> {
  factory $StateDataCopyWith(StateData value, $Res Function(StateData) then) =
      _$StateDataCopyWithImpl<$Res, StateData>;
  @useResult
  $Res call({@JsonKey(name: "state") String? stateName});
}

/// @nodoc
class _$StateDataCopyWithImpl<$Res, $Val extends StateData>
    implements $StateDataCopyWith<$Res> {
  _$StateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateName = freezed,
  }) {
    return _then(_value.copyWith(
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateDataCopyWith<$Res> implements $StateDataCopyWith<$Res> {
  factory _$$_StateDataCopyWith(
          _$_StateData value, $Res Function(_$_StateData) then) =
      __$$_StateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "state") String? stateName});
}

/// @nodoc
class __$$_StateDataCopyWithImpl<$Res>
    extends _$StateDataCopyWithImpl<$Res, _$_StateData>
    implements _$$_StateDataCopyWith<$Res> {
  __$$_StateDataCopyWithImpl(
      _$_StateData _value, $Res Function(_$_StateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateName = freezed,
  }) {
    return _then(_$_StateData(
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StateData implements _StateData {
  const _$_StateData({@JsonKey(name: "state") required this.stateName});

  factory _$_StateData.fromJson(Map<String, dynamic> json) =>
      _$$_StateDataFromJson(json);

  @override
  @JsonKey(name: "state")
  final String? stateName;

  @override
  String toString() {
    return 'StateData(stateName: $stateName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateData &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stateName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      __$$_StateDataCopyWithImpl<_$_StateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateDataToJson(
      this,
    );
  }
}

abstract class _StateData implements StateData {
  const factory _StateData(
          {@JsonKey(name: "state") required final String? stateName}) =
      _$_StateData;

  factory _StateData.fromJson(Map<String, dynamic> json) =
      _$_StateData.fromJson;

  @override
  @JsonKey(name: "state")
  String? get stateName;
  @override
  @JsonKey(ignore: true)
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      throw _privateConstructorUsedError;
}
