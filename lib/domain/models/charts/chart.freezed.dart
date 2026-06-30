// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Chart {
  String get chartId => throw _privateConstructorUsedError;
  BilingualText get title => throw _privateConstructorUsedError;
  String get urgency => throw _privateConstructorUsedError;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartCopyWith<Chart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartCopyWith<$Res> {
  factory $ChartCopyWith(Chart value, $Res Function(Chart) then) =
      _$ChartCopyWithImpl<$Res, Chart>;
  @useResult
  $Res call({String chartId, BilingualText title, String urgency});

  $BilingualTextCopyWith<$Res> get title;
}

/// @nodoc
class _$ChartCopyWithImpl<$Res, $Val extends Chart>
    implements $ChartCopyWith<$Res> {
  _$ChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartId = null,
    Object? title = null,
    Object? urgency = null,
  }) {
    return _then(
      _value.copyWith(
            chartId:
                null == chartId
                    ? _value.chartId
                    : chartId // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as BilingualText,
            urgency:
                null == urgency
                    ? _value.urgency
                    : urgency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BilingualTextCopyWith<$Res> get title {
    return $BilingualTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChartImplCopyWith<$Res> implements $ChartCopyWith<$Res> {
  factory _$$ChartImplCopyWith(
    _$ChartImpl value,
    $Res Function(_$ChartImpl) then,
  ) = __$$ChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String chartId, BilingualText title, String urgency});

  @override
  $BilingualTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$ChartImplCopyWithImpl<$Res>
    extends _$ChartCopyWithImpl<$Res, _$ChartImpl>
    implements _$$ChartImplCopyWith<$Res> {
  __$$ChartImplCopyWithImpl(
    _$ChartImpl _value,
    $Res Function(_$ChartImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartId = null,
    Object? title = null,
    Object? urgency = null,
  }) {
    return _then(
      _$ChartImpl(
        chartId:
            null == chartId
                ? _value.chartId
                : chartId // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as BilingualText,
        urgency:
            null == urgency
                ? _value.urgency
                : urgency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ChartImpl implements _Chart {
  const _$ChartImpl({
    required this.chartId,
    required this.title,
    required this.urgency,
  });

  @override
  final String chartId;
  @override
  final BilingualText title;
  @override
  final String urgency;

  @override
  String toString() {
    return 'Chart(chartId: $chartId, title: $title, urgency: $urgency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartImpl &&
            (identical(other.chartId, chartId) || other.chartId == chartId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.urgency, urgency) || other.urgency == urgency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chartId, title, urgency);

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartImplCopyWith<_$ChartImpl> get copyWith =>
      __$$ChartImplCopyWithImpl<_$ChartImpl>(this, _$identity);
}

abstract class _Chart implements Chart {
  const factory _Chart({
    required final String chartId,
    required final BilingualText title,
    required final String urgency,
  }) = _$ChartImpl;

  @override
  String get chartId;
  @override
  BilingualText get title;
  @override
  String get urgency;

  /// Create a copy of Chart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartImplCopyWith<_$ChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
