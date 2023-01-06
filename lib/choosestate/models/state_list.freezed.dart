// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateList _$StateListFromJson(Map<String, dynamic> json) {
  return _StateList.fromJson(json);
}

/// @nodoc
mixin _$StateList {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<StateData>? get stateDataList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateListCopyWith<StateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateListCopyWith<$Res> {
  factory $StateListCopyWith(StateList value, $Res Function(StateList) then) =
      _$StateListCopyWithImpl<$Res, StateList>;
  @useResult
  $Res call(
      {String? status, @JsonKey(name: "data") List<StateData>? stateDataList});
}

/// @nodoc
class _$StateListCopyWithImpl<$Res, $Val extends StateList>
    implements $StateListCopyWith<$Res> {
  _$StateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? stateDataList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      stateDataList: freezed == stateDataList
          ? _value.stateDataList
          : stateDataList // ignore: cast_nullable_to_non_nullable
              as List<StateData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateListCopyWith<$Res> implements $StateListCopyWith<$Res> {
  factory _$$_StateListCopyWith(
          _$_StateList value, $Res Function(_$_StateList) then) =
      __$$_StateListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status, @JsonKey(name: "data") List<StateData>? stateDataList});
}

/// @nodoc
class __$$_StateListCopyWithImpl<$Res>
    extends _$StateListCopyWithImpl<$Res, _$_StateList>
    implements _$$_StateListCopyWith<$Res> {
  __$$_StateListCopyWithImpl(
      _$_StateList _value, $Res Function(_$_StateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? stateDataList = freezed,
  }) {
    return _then(_$_StateList(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      stateDataList: freezed == stateDataList
          ? _value._stateDataList
          : stateDataList // ignore: cast_nullable_to_non_nullable
              as List<StateData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StateList implements _StateList {
  const _$_StateList(
      {required this.status,
      @JsonKey(name: "data") required final List<StateData>? stateDataList})
      : _stateDataList = stateDataList;

  factory _$_StateList.fromJson(Map<String, dynamic> json) =>
      _$$_StateListFromJson(json);

  @override
  final String? status;
  final List<StateData>? _stateDataList;
  @override
  @JsonKey(name: "data")
  List<StateData>? get stateDataList {
    final value = _stateDataList;
    if (value == null) return null;
    if (_stateDataList is EqualUnmodifiableListView) return _stateDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StateList(status: $status, stateDataList: $stateDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateList &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._stateDataList, _stateDataList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_stateDataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateListCopyWith<_$_StateList> get copyWith =>
      __$$_StateListCopyWithImpl<_$_StateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateListToJson(
      this,
    );
  }
}

abstract class _StateList implements StateList {
  const factory _StateList(
      {required final String? status,
      @JsonKey(name: "data")
          required final List<StateData>? stateDataList}) = _$_StateList;

  factory _StateList.fromJson(Map<String, dynamic> json) =
      _$_StateList.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "data")
  List<StateData>? get stateDataList;
  @override
  @JsonKey(ignore: true)
  _$$_StateListCopyWith<_$_StateList> get copyWith =>
      throw _privateConstructorUsedError;
}
