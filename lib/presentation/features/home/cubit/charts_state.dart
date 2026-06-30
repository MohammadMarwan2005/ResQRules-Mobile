import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/error/failure.dart';
import '../../../../domain/models/charts/chart.dart';

part 'charts_state.freezed.dart';

@Freezed(toJson: false, fromJson: false)
sealed class ChartsState with _$ChartsState {
  const factory ChartsState.initial() = ChartsInitial;
  const factory ChartsState.loading() = ChartsLoading;
  const factory ChartsState.loaded(List<Chart> charts) = ChartsLoaded;
  const factory ChartsState.error(Failure failure) = ChartsError;
}
