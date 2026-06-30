// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SessionResponse {
  String get sessionId => throw _privateConstructorUsedError;
  bool get alive => throw _privateConstructorUsedError;
  ScreenState get screen => throw _privateConstructorUsedError;
  OverrideEvent? get overrideEvent => throw _privateConstructorUsedError;
  List<DangerPanelItem> get dangerPanel => throw _privateConstructorUsedError;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionResponseCopyWith<SessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionResponseCopyWith<$Res> {
  factory $SessionResponseCopyWith(
    SessionResponse value,
    $Res Function(SessionResponse) then,
  ) = _$SessionResponseCopyWithImpl<$Res, SessionResponse>;
  @useResult
  $Res call({
    String sessionId,
    bool alive,
    ScreenState screen,
    OverrideEvent? overrideEvent,
    List<DangerPanelItem> dangerPanel,
  });

  $ScreenStateCopyWith<$Res> get screen;
  $OverrideEventCopyWith<$Res>? get overrideEvent;
}

/// @nodoc
class _$SessionResponseCopyWithImpl<$Res, $Val extends SessionResponse>
    implements $SessionResponseCopyWith<$Res> {
  _$SessionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? alive = null,
    Object? screen = null,
    Object? overrideEvent = freezed,
    Object? dangerPanel = null,
  }) {
    return _then(
      _value.copyWith(
            sessionId:
                null == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String,
            alive:
                null == alive
                    ? _value.alive
                    : alive // ignore: cast_nullable_to_non_nullable
                        as bool,
            screen:
                null == screen
                    ? _value.screen
                    : screen // ignore: cast_nullable_to_non_nullable
                        as ScreenState,
            overrideEvent:
                freezed == overrideEvent
                    ? _value.overrideEvent
                    : overrideEvent // ignore: cast_nullable_to_non_nullable
                        as OverrideEvent?,
            dangerPanel:
                null == dangerPanel
                    ? _value.dangerPanel
                    : dangerPanel // ignore: cast_nullable_to_non_nullable
                        as List<DangerPanelItem>,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreenStateCopyWith<$Res> get screen {
    return $ScreenStateCopyWith<$Res>(_value.screen, (value) {
      return _then(_value.copyWith(screen: value) as $Val);
    });
  }

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverrideEventCopyWith<$Res>? get overrideEvent {
    if (_value.overrideEvent == null) {
      return null;
    }

    return $OverrideEventCopyWith<$Res>(_value.overrideEvent!, (value) {
      return _then(_value.copyWith(overrideEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionResponseImplCopyWith<$Res>
    implements $SessionResponseCopyWith<$Res> {
  factory _$$SessionResponseImplCopyWith(
    _$SessionResponseImpl value,
    $Res Function(_$SessionResponseImpl) then,
  ) = __$$SessionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sessionId,
    bool alive,
    ScreenState screen,
    OverrideEvent? overrideEvent,
    List<DangerPanelItem> dangerPanel,
  });

  @override
  $ScreenStateCopyWith<$Res> get screen;
  @override
  $OverrideEventCopyWith<$Res>? get overrideEvent;
}

/// @nodoc
class __$$SessionResponseImplCopyWithImpl<$Res>
    extends _$SessionResponseCopyWithImpl<$Res, _$SessionResponseImpl>
    implements _$$SessionResponseImplCopyWith<$Res> {
  __$$SessionResponseImplCopyWithImpl(
    _$SessionResponseImpl _value,
    $Res Function(_$SessionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? alive = null,
    Object? screen = null,
    Object? overrideEvent = freezed,
    Object? dangerPanel = null,
  }) {
    return _then(
      _$SessionResponseImpl(
        sessionId:
            null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String,
        alive:
            null == alive
                ? _value.alive
                : alive // ignore: cast_nullable_to_non_nullable
                    as bool,
        screen:
            null == screen
                ? _value.screen
                : screen // ignore: cast_nullable_to_non_nullable
                    as ScreenState,
        overrideEvent:
            freezed == overrideEvent
                ? _value.overrideEvent
                : overrideEvent // ignore: cast_nullable_to_non_nullable
                    as OverrideEvent?,
        dangerPanel:
            null == dangerPanel
                ? _value._dangerPanel
                : dangerPanel // ignore: cast_nullable_to_non_nullable
                    as List<DangerPanelItem>,
      ),
    );
  }
}

/// @nodoc

class _$SessionResponseImpl implements _SessionResponse {
  const _$SessionResponseImpl({
    required this.sessionId,
    required this.alive,
    required this.screen,
    this.overrideEvent,
    required final List<DangerPanelItem> dangerPanel,
  }) : _dangerPanel = dangerPanel;

  @override
  final String sessionId;
  @override
  final bool alive;
  @override
  final ScreenState screen;
  @override
  final OverrideEvent? overrideEvent;
  final List<DangerPanelItem> _dangerPanel;
  @override
  List<DangerPanelItem> get dangerPanel {
    if (_dangerPanel is EqualUnmodifiableListView) return _dangerPanel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerPanel);
  }

  @override
  String toString() {
    return 'SessionResponse(sessionId: $sessionId, alive: $alive, screen: $screen, overrideEvent: $overrideEvent, dangerPanel: $dangerPanel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionResponseImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.alive, alive) || other.alive == alive) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.overrideEvent, overrideEvent) ||
                other.overrideEvent == overrideEvent) &&
            const DeepCollectionEquality().equals(
              other._dangerPanel,
              _dangerPanel,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    sessionId,
    alive,
    screen,
    overrideEvent,
    const DeepCollectionEquality().hash(_dangerPanel),
  );

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionResponseImplCopyWith<_$SessionResponseImpl> get copyWith =>
      __$$SessionResponseImplCopyWithImpl<_$SessionResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _SessionResponse implements SessionResponse {
  const factory _SessionResponse({
    required final String sessionId,
    required final bool alive,
    required final ScreenState screen,
    final OverrideEvent? overrideEvent,
    required final List<DangerPanelItem> dangerPanel,
  }) = _$SessionResponseImpl;

  @override
  String get sessionId;
  @override
  bool get alive;
  @override
  ScreenState get screen;
  @override
  OverrideEvent? get overrideEvent;
  @override
  List<DangerPanelItem> get dangerPanel;

  /// Create a copy of SessionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionResponseImplCopyWith<_$SessionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
