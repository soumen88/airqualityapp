// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_index_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirIndexModel _$AirIndexModelFromJson(Map<String, dynamic> json) {
  return _AirIndexModel.fromJson(json);
}

/// @nodoc
mixin _$AirIndexModel {
  MainModel? get main => throw _privateConstructorUsedError;
  Components? get components => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirIndexModelCopyWith<AirIndexModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirIndexModelCopyWith<$Res> {
  factory $AirIndexModelCopyWith(
          AirIndexModel value, $Res Function(AirIndexModel) then) =
      _$AirIndexModelCopyWithImpl<$Res, AirIndexModel>;
  @useResult
  $Res call({MainModel? main, Components? components, int dt});

  $MainModelCopyWith<$Res>? get main;
  $ComponentsCopyWith<$Res>? get components;
}

/// @nodoc
class _$AirIndexModelCopyWithImpl<$Res, $Val extends AirIndexModel>
    implements $AirIndexModelCopyWith<$Res> {
  _$AirIndexModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? components = freezed,
    Object? dt = null,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components?,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainModelCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComponentsCopyWith<$Res>? get components {
    if (_value.components == null) {
      return null;
    }

    return $ComponentsCopyWith<$Res>(_value.components!, (value) {
      return _then(_value.copyWith(components: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AirIndexModelCopyWith<$Res>
    implements $AirIndexModelCopyWith<$Res> {
  factory _$$_AirIndexModelCopyWith(
          _$_AirIndexModel value, $Res Function(_$_AirIndexModel) then) =
      __$$_AirIndexModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainModel? main, Components? components, int dt});

  @override
  $MainModelCopyWith<$Res>? get main;
  @override
  $ComponentsCopyWith<$Res>? get components;
}

/// @nodoc
class __$$_AirIndexModelCopyWithImpl<$Res>
    extends _$AirIndexModelCopyWithImpl<$Res, _$_AirIndexModel>
    implements _$$_AirIndexModelCopyWith<$Res> {
  __$$_AirIndexModelCopyWithImpl(
      _$_AirIndexModel _value, $Res Function(_$_AirIndexModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? components = freezed,
    Object? dt = null,
  }) {
    return _then(_$_AirIndexModel(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components?,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AirIndexModel implements _AirIndexModel {
  const _$_AirIndexModel(
      {required this.main, required this.components, required this.dt});

  factory _$_AirIndexModel.fromJson(Map<String, dynamic> json) =>
      _$$_AirIndexModelFromJson(json);

  @override
  final MainModel? main;
  @override
  final Components? components;
  @override
  final int dt;

  @override
  String toString() {
    return 'AirIndexModel(main: $main, components: $components, dt: $dt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AirIndexModel &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.components, components) ||
                other.components == components) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, components, dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirIndexModelCopyWith<_$_AirIndexModel> get copyWith =>
      __$$_AirIndexModelCopyWithImpl<_$_AirIndexModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirIndexModelToJson(
      this,
    );
  }
}

abstract class _AirIndexModel implements AirIndexModel {
  const factory _AirIndexModel(
      {required final MainModel? main,
      required final Components? components,
      required final int dt}) = _$_AirIndexModel;

  factory _AirIndexModel.fromJson(Map<String, dynamic> json) =
      _$_AirIndexModel.fromJson;

  @override
  MainModel? get main;
  @override
  Components? get components;
  @override
  int get dt;
  @override
  @JsonKey(ignore: true)
  _$$_AirIndexModelCopyWith<_$_AirIndexModel> get copyWith =>
      throw _privateConstructorUsedError;
}
