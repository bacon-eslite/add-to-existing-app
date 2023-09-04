import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forecast.g.dart';

@riverpod
class ForecastPod extends _$ForecastPod {
  @override
  Forecast? build() => null;

  void set(Forecast? forecast) {
    state = forecast;
  }

  void reset() {
    state = null;
  }
}
