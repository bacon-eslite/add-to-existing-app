import 'package:flutter_module/common/util/util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/util/geo_location.dart';
import '../model/model.dart';
import '../repository/repository.dart';
import '../service/service.dart';

part 'city_list.g.dart';

@riverpod
class CityListProvider extends _$CityListProvider {
  @override
  List<City> build() {
    getAllCached();
    return [];
  }

  Future getAllCached() async {
    final repos = await CityRepo.getAll() ?? [];
    state = repos.map((e) => City.fromRepo(e)).toList();
  }

  Future<void> getCitiesByName(String city) async {
    final repos = await CityRepo.getByName(city);

    if (repos?.isNotEmpty ?? false) {
      Logger().d('get cities from db');
      state = repos!.map((e) => City.fromRepo(e)).toList();
      return;
    }

    Logger().d('get cities from api');

    final (cities, err) = await GeocodingService().queryCities(city: city);
    if (err != null) {
      state = [];
      return;
    }

    CityRepo.insertAll(
        cities.map((e) => CityRepo.fromJson(e.toJson())).toList());

    state = cities.map((e) => City.fromDto(e)).toList();
  }

  Future<void> remove(City city) async {
    await CityRepo.deleteById(city.id!);
    state = state.where((element) => element.id != city.id).toList();
  }

  Future<void> reset() async {
    await CityRepo.deleteAll();
    state = [];
  }

  City getByName(String name) {
    return state.firstWhere((element) => element.name == name);
  }

  Future<City?> getCurrentLocation() async {
    final geoLocation = await GeoLocation().getCurrentPosition();
    if (geoLocation == null) return null;

    return City(
      name: 'Current Location',
      latitude: geoLocation.latitude,
      longitude: geoLocation.longitude,
    );
  }
}
