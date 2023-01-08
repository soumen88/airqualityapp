// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForecastScreenEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)
        displayGraph,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGraph value) displayGraph,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGraph value)? displayGraph,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGraph value)? displayGraph,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastScreenEventsCopyWith<$Res> {
  factory $ForecastScreenEventsCopyWith(ForecastScreenEvents value,
          $Res Function(ForecastScreenEvents) then) =
      _$ForecastScreenEventsCopyWithImpl<$Res, ForecastScreenEvents>;
}

/// @nodoc
class _$ForecastScreenEventsCopyWithImpl<$Res,
        $Val extends ForecastScreenEvents>
    implements $ForecastScreenEventsCopyWith<$Res> {
  _$ForecastScreenEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DisplayGraphCopyWith<$Res> {
  factory _$$_DisplayGraphCopyWith(
          _$_DisplayGraph value, $Res Function(_$_DisplayGraph) then) =
      __$$_DisplayGraphCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GraphPoint> points, ForecastMainModel forecastMainModel});

  $ForecastMainModelCopyWith<$Res> get forecastMainModel;
}

/// @nodoc
class __$$_DisplayGraphCopyWithImpl<$Res>
    extends _$ForecastScreenEventsCopyWithImpl<$Res, _$_DisplayGraph>
    implements _$$_DisplayGraphCopyWith<$Res> {
  __$$_DisplayGraphCopyWithImpl(
      _$_DisplayGraph _value, $Res Function(_$_DisplayGraph) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? forecastMainModel = null,
  }) {
    return _then(_$_DisplayGraph(
      null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<GraphPoint>,
      null == forecastMainModel
          ? _value.forecastMainModel
          : forecastMainModel // ignore: cast_nullable_to_non_nullable
              as ForecastMainModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastMainModelCopyWith<$Res> get forecastMainModel {
    return $ForecastMainModelCopyWith<$Res>(_value.forecastMainModel, (value) {
      return _then(_value.copyWith(forecastMainModel: value));
    });
  }
}

/// @nodoc

class _$_DisplayGraph implements _DisplayGraph {
  const _$_DisplayGraph(final List<GraphPoint> points, this.forecastMainModel)
      : _points = points;

  final List<GraphPoint> _points;
  @override
  List<GraphPoint> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final ForecastMainModel forecastMainModel;

  @override
  String toString() {
    return 'ForecastScreenEvents.displayGraph(points: $points, forecastMainModel: $forecastMainModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayGraph &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.forecastMainModel, forecastMainModel) ||
                other.forecastMainModel == forecastMainModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_points), forecastMainModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayGraphCopyWith<_$_DisplayGraph> get copyWith =>
      __$$_DisplayGraphCopyWithImpl<_$_DisplayGraph>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)
        displayGraph,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return displayGraph(points, forecastMainModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return displayGraph?.call(points, forecastMainModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (displayGraph != null) {
      return displayGraph(points, forecastMainModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGraph value) displayGraph,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return displayGraph(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGraph value)? displayGraph,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return displayGraph?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGraph value)? displayGraph,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (displayGraph != null) {
      return displayGraph(this);
    }
    return orElse();
  }
}

abstract class _DisplayGraph implements ForecastScreenEvents {
  const factory _DisplayGraph(final List<GraphPoint> points,
      final ForecastMainModel forecastMainModel) = _$_DisplayGraph;

  List<GraphPoint> get points;
  ForecastMainModel get forecastMainModel;
  @JsonKey(ignore: true)
  _$$_DisplayGraphCopyWith<_$_DisplayGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ForecastScreenEventsCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ForecastScreenEvents.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)
        displayGraph,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGraph value) displayGraph,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGraph value)? displayGraph,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGraph value)? displayGraph,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ForecastScreenEvents {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ForecastScreenEventsCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'ForecastScreenEvents.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)
        displayGraph,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<GraphPoint> points, ForecastMainModel forecastMainModel)?
        displayGraph,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGraph value) displayGraph,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGraph value)? displayGraph,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGraph value)? displayGraph,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ForecastScreenEvents {
  const factory _Error() = _$_Error;
}
