// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SessionState {
  SessionStatus get status => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  String? get chartId => throw _privateConstructorUsedError;
  ScreenState? get screen => throw _privateConstructorUsedError;
  List<DangerPanelItem> get dangerPanel => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  OverrideOutcome? get toast => throw _privateConstructorUsedError;
  bool get errorVisible => throw _privateConstructorUsedError;
  bool get alive => throw _privateConstructorUsedError;

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionStateCopyWith<SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
    SessionState value,
    $Res Function(SessionState) then,
  ) = _$SessionStateCopyWithImpl<$Res, SessionState>;
  @useResult
  $Res call({
    SessionStatus status,
    String? sessionId,
    String? chartId,
    ScreenState? screen,
    List<DangerPanelItem> dangerPanel,
    bool loading,
    OverrideOutcome? toast,
    bool errorVisible,
    bool alive,
  });

  $ScreenStateCopyWith<$Res>? get screen;
  $OverrideOutcomeCopyWith<$Res>? get toast;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessionId = freezed,
    Object? chartId = freezed,
    Object? screen = freezed,
    Object? dangerPanel = null,
    Object? loading = null,
    Object? toast = freezed,
    Object? errorVisible = null,
    Object? alive = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as SessionStatus,
            sessionId:
                freezed == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String?,
            chartId:
                freezed == chartId
                    ? _value.chartId
                    : chartId // ignore: cast_nullable_to_non_nullable
                        as String?,
            screen:
                freezed == screen
                    ? _value.screen
                    : screen // ignore: cast_nullable_to_non_nullable
                        as ScreenState?,
            dangerPanel:
                null == dangerPanel
                    ? _value.dangerPanel
                    : dangerPanel // ignore: cast_nullable_to_non_nullable
                        as List<DangerPanelItem>,
            loading:
                null == loading
                    ? _value.loading
                    : loading // ignore: cast_nullable_to_non_nullable
                        as bool,
            toast:
                freezed == toast
                    ? _value.toast
                    : toast // ignore: cast_nullable_to_non_nullable
                        as OverrideOutcome?,
            errorVisible:
                null == errorVisible
                    ? _value.errorVisible
                    : errorVisible // ignore: cast_nullable_to_non_nullable
                        as bool,
            alive:
                null == alive
                    ? _value.alive
                    : alive // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreenStateCopyWith<$Res>? get screen {
    if (_value.screen == null) {
      return null;
    }

    return $ScreenStateCopyWith<$Res>(_value.screen!, (value) {
      return _then(_value.copyWith(screen: value) as $Val);
    });
  }

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OverrideOutcomeCopyWith<$Res>? get toast {
    if (_value.toast == null) {
      return null;
    }

    return $OverrideOutcomeCopyWith<$Res>(_value.toast!, (value) {
      return _then(_value.copyWith(toast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionStateImplCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$$SessionStateImplCopyWith(
    _$SessionStateImpl value,
    $Res Function(_$SessionStateImpl) then,
  ) = __$$SessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SessionStatus status,
    String? sessionId,
    String? chartId,
    ScreenState? screen,
    List<DangerPanelItem> dangerPanel,
    bool loading,
    OverrideOutcome? toast,
    bool errorVisible,
    bool alive,
  });

  @override
  $ScreenStateCopyWith<$Res>? get screen;
  @override
  $OverrideOutcomeCopyWith<$Res>? get toast;
}

/// @nodoc
class __$$SessionStateImplCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateImpl>
    implements _$$SessionStateImplCopyWith<$Res> {
  __$$SessionStateImplCopyWithImpl(
    _$SessionStateImpl _value,
    $Res Function(_$SessionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sessionId = freezed,
    Object? chartId = freezed,
    Object? screen = freezed,
    Object? dangerPanel = null,
    Object? loading = null,
    Object? toast = freezed,
    Object? errorVisible = null,
    Object? alive = null,
  }) {
    return _then(
      _$SessionStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as SessionStatus,
        sessionId:
            freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String?,
        chartId:
            freezed == chartId
                ? _value.chartId
                : chartId // ignore: cast_nullable_to_non_nullable
                    as String?,
        screen:
            freezed == screen
                ? _value.screen
                : screen // ignore: cast_nullable_to_non_nullable
                    as ScreenState?,
        dangerPanel:
            null == dangerPanel
                ? _value._dangerPanel
                : dangerPanel // ignore: cast_nullable_to_non_nullable
                    as List<DangerPanelItem>,
        loading:
            null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                    as bool,
        toast:
            freezed == toast
                ? _value.toast
                : toast // ignore: cast_nullable_to_non_nullable
                    as OverrideOutcome?,
        errorVisible:
            null == errorVisible
                ? _value.errorVisible
                : errorVisible // ignore: cast_nullable_to_non_nullable
                    as bool,
        alive:
            null == alive
                ? _value.alive
                : alive // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SessionStateImpl implements _SessionState {
  const _$SessionStateImpl({
    this.status = SessionStatus.initial,
    this.sessionId,
    this.chartId,
    this.screen,
    final List<DangerPanelItem> dangerPanel = const <DangerPanelItem>[],
    this.loading = false,
    this.toast,
    this.errorVisible = false,
    this.alive = true,
  }) : _dangerPanel = dangerPanel;

  @override
  @JsonKey()
  final SessionStatus status;
  @override
  final String? sessionId;
  @override
  final String? chartId;
  @override
  final ScreenState? screen;
  final List<DangerPanelItem> _dangerPanel;
  @override
  @JsonKey()
  List<DangerPanelItem> get dangerPanel {
    if (_dangerPanel is EqualUnmodifiableListView) return _dangerPanel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerPanel);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  final OverrideOutcome? toast;
  @override
  @JsonKey()
  final bool errorVisible;
  @override
  @JsonKey()
  final bool alive;

  @override
  String toString() {
    return 'SessionState(status: $status, sessionId: $sessionId, chartId: $chartId, screen: $screen, dangerPanel: $dangerPanel, loading: $loading, toast: $toast, errorVisible: $errorVisible, alive: $alive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.chartId, chartId) || other.chartId == chartId) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            const DeepCollectionEquality().equals(
              other._dangerPanel,
              _dangerPanel,
            ) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.toast, toast) || other.toast == toast) &&
            (identical(other.errorVisible, errorVisible) ||
                other.errorVisible == errorVisible) &&
            (identical(other.alive, alive) || other.alive == alive));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    sessionId,
    chartId,
    screen,
    const DeepCollectionEquality().hash(_dangerPanel),
    loading,
    toast,
    errorVisible,
    alive,
  );

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionStateImplCopyWith<_$SessionStateImpl> get copyWith =>
      __$$SessionStateImplCopyWithImpl<_$SessionStateImpl>(this, _$identity);
}

abstract class _SessionState implements SessionState {
  const factory _SessionState({
    final SessionStatus status,
    final String? sessionId,
    final String? chartId,
    final ScreenState? screen,
    final List<DangerPanelItem> dangerPanel,
    final bool loading,
    final OverrideOutcome? toast,
    final bool errorVisible,
    final bool alive,
  }) = _$SessionStateImpl;

  @override
  SessionStatus get status;
  @override
  String? get sessionId;
  @override
  String? get chartId;
  @override
  ScreenState? get screen;
  @override
  List<DangerPanelItem> get dangerPanel;
  @override
  bool get loading;
  @override
  OverrideOutcome? get toast;
  @override
  bool get errorVisible;
  @override
  bool get alive;

  /// Create a copy of SessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionStateImplCopyWith<_$SessionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
