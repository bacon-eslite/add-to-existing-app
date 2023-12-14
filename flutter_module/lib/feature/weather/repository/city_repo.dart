import 'package:flutter_module/common/util/util.dart';
import 'package:isar/isar.dart';

part 'city_repo.g.dart';

@collection
class CityRepo {
  Id id = Isar.autoIncrement;
  String? name;
  double? latitude;
  double? longitude;
  double? elevation;
  @Name('feature_code')
  String? featureCode;
  @Name('country_code')
  String? countryCode;
  String? timezone;
  int? population;
  @Name('country_id')
  int? countryId;
  String? country;
  final int? admin1Id;
  final int? admin2Id;
  final String? admin1;
  final String? admin2;
  final int? admin3Id;
  final int? admin4Id;
  final String? admin3;
  final String? admin4;
  @Name('created_at')
  DateTime createdAt = DateTime.now();

  CityRepo({
    this.name,
    this.latitude,
    this.longitude,
    this.elevation,
    this.featureCode,
    this.countryCode,
    this.timezone,
    this.population,
    this.countryId,
    this.country,
    this.admin1Id,
    this.admin2Id,
    this.admin1,
    this.admin2,
    this.admin3Id,
    this.admin4Id,
    this.admin3,
    this.admin4,
  });

  factory CityRepo.fromJson(Map<String, dynamic> json) {
    return CityRepo(
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      elevation: json['elevation'],
      featureCode: json['feature_code'],
      countryCode: json['country_code'],
      timezone: json['timezone'],
      population: json['population'],
      countryId: json['country_id'],
      country: json['country'],
      admin1Id: json['admin1_id'],
      admin2Id: json['admin2_id'],
      admin1: json['admin1'],
      admin2: json['admin2'],
      admin3Id: json['admin3_id'],
      admin4Id: json['admin4_id'],
      admin3: json['admin3'],
      admin4: json['admin4'],
    );
  }

  static Future<List<CityRepo>?> getAll() async {
    final res = await Isar.getInstance()?.cityRepos.where().findAll();
    Logger().d('getAll: ${res?.length}');
    return res;
  }

  static Future<List<CityRepo>?> getByName(String name) async {
    final res = await Isar.getInstance()
        ?.cityRepos
        .where()
        .filter()
        .nameContains(name, caseSensitive: false)
        .findAll();
    Logger().d('getByName: ${res?.length}');
    return res;
  }

  static Future insertAll(List<CityRepo> cities) async {
    final isar = Isar.getInstance();
    Logger().d('insertAll: init isar');
    if (isar == null) return;
    Logger().d('insertAll: isar init done');
    isar.writeTxn(() async {
      final res = await isar.cityRepos.putAll(cities);
      Logger().d('insertAll: ${res.length}');
    });
  }

  static Future deleteById(int id) async {
    final isar = Isar.getInstance();
    if (isar == null) return;
    isar.writeTxn(() async {
      await isar.cityRepos.delete(id);
    });
  }

  static Future deleteAll() async {
    final isar = Isar.getInstance();
    if (isar == null) return;
    isar.writeTxn(() async {
      await isar.cityRepos.clear();
    });
  }
}
