import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location.g.dart';

@riverpod
class LocationList extends _$LocationList {
  @override
  List<Location> build() => [];

  void set(List<Location> location) {
    state = location;
  }

  void reset() {
    state = [];
  }
}
