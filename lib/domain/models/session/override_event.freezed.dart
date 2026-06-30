// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'override_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OverrideEvent {
  String get kind =>
      throw _privateConstructorUsedError; // catastrophic_bleeding | not_breathing | no_pulse | unconscious
  int get salience => throw _privateConstructorUsedError;
  String? get jumpedToChart =>
      throw _privateConstructorUsedError; // null when guard_fired
  bool get guardFired => throw _privateConstructorUsedError;

  /// Create a copy of OverrideEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverrideEventCopyWith<OverrideEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverrideEventCopyWith<$Res> {
  factory $OverrideEventCopyWith(
    OverrideEvent value,
    $Res Function(OverrideEvent) then,
  ) = _$OverrideEventCopyWithImpl<$Res, OverrideEvent>;
  @useResult
  $Res call({
    String kind,
    int salience,
    String? jumpedToChart,
    bool guardFired,
  });
}

/// @nodoc
class _$OverrideEventCopyWithImpl<$Res, $Val extends OverrideEvent>
    implements $OverrideEventCopyWith<$Res> {
  _$OverrideEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverrideEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? salience = null,
    Object? jumpedToChart = freezed,
    Object? guardFired = null,
  }) {
    return _then(
      _value.copyWith(
            kind:
                null == kind
                    ? _value.kind
                    : kind // ignore: cast_nullable_to_non_nullable
                        as String,
            salience:
                null == salience
                    ? _value.salience
                    : salience // ignore: cast_nullable_to_non_nullable
                        as int,
            jumpedToChart:
                freezed == jumpedToChart
                    ? _value.jumpedToChart
                    : jumpedToChart // ignore: cast_nullable_to_non_nullable
                        as String?,
            guardFired:
                null == guardFired
                    ? _value.guardFired
                    : guardFired // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OverrideEventImplCopyWith<$Res>
    implements $OverrideEventCopyWith<$Res> {
  factory _$$OverrideEventImplCopyWith(
    _$OverrideEventImpl value,
    $Res Function(_$OverrideEventImpl) then,
  ) = __$$OverrideEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String kind,
    int salience,
    String? jumpedToChart,
    bool guardFired,
  });
}

/// @nodoc
class __$$OverrideEventImplCopyWithImpl<$Res>
    extends _$OverrideEventCopyWithImpl<$Res, _$OverrideEventImpl>
    implements _$$OverrideEventImplCopyWith<$Res> {
  __$$OverrideEventImplCopyWithImpl(
    _$OverrideEventImpl _value,
    $Res Function(_$OverrideEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverrideEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? salience = null,
    Object? jumpedToChart = freezed,
    Object? guardFired = null,
  }) {
    return _then(
      _$OverrideEventImpl(
        kind:
            null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                    as String,
        salience:
            null == salience
                ? _value.salience
                : salience // ignore: cast_nullable_to_non_nullable
                    as int,
        jumpedToChart:
            freezed == jumpedToChart
                ? _value.jumpedToChart
                : jumpedToChart // ignore: cast_nullable_to_non_nullable
                    as String?,
        guardFired:
            null == guardFired
                ? _value.guardFired
                : guardFired // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$OverrideEventImpl implements _OverrideEvent {
  const _$OverrideEventImpl({
    required this.kind,
    required this.salience,
    this.jumpedToChart,
    required this.guardFired,
  });

  @override
  final String kind;
  // catastrophic_bleeding | not_breathing | no_pulse | unconscious
  @override
  final int salience;
  @override
  final String? jumpedToChart;
  // null when guard_fired
  @override
  final bool guardFired;

  @override
  String toString() {
    return 'OverrideEvent(kind: $kind, salience: $salience, jumpedToChart: $jumpedToChart, guardFired: $guardFired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverrideEventImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.salience, salience) ||
                other.salience == salience) &&
            (identical(other.jumpedToChart, jumpedToChart) ||
                other.jumpedToChart == jumpedToChart) &&
            (identical(other.guardFired, guardFired) ||
                other.guardFired == guardFired));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, kind, salience, jumpedToChart, guardFired);

  /// Create a copy of OverrideEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverrideEventImplCopyWith<_$OverrideEventImpl> get copyWith =>
      __$$OverrideEventImplCopyWithImpl<_$OverrideEventImpl>(this, _$identity);
}

abstract class _OverrideEvent implements OverrideEvent {
  const factory _OverrideEvent({
    required final String kind,
    required final int salience,
    final String? jumpedToChart,
    required final bool guardFired,
  }) = _$OverrideEventImpl;

  @override
  String get kind; // catastrophic_bleeding | not_breathing | no_pulse | unconscious
  @override
  int get salience;
  @override
  String? get jumpedToChart; // null when guard_fired
  @override
  bool get guardFired;

  /// Create a copy of OverrideEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverrideEventImplCopyWith<_$OverrideEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
