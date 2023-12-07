import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

import 'category.dart';
import 'tag.dart';

class Pet extends Equatable {
  const Pet({
    required String name,
    List<String>? photoUrls,
    int? id,
    Category? category,
    List<Tag>? tags,
    PetStatusEnum? status,
  })  : _name = name,
        _photoUrls = photoUrls,
        _id = id,
        _category = category,
        _tags = tags,
        _status = status;

  final String _name;
  final List<String>? _photoUrls;
  final int? _id;
  final Category? _category;
  final List<Tag>? _tags;
  final PetStatusEnum? _status;

  factory Pet.fromDto(api.Pet dto) => Pet(
        name: dto.name,
        photoUrls: dto.photoUrls,
        id: dto.id,
        category: dto.category != null ? Category.fromDto(dto.category!) : null,
        tags: dto.tags.map((e) => Tag.fromDto(e)).toList(growable: false),
        status: dto.status != null
            ? PetStatusEnumX.fromName(dto.status! as String) ??
                PetStatusEnum.available
            : null,
      );

  api.Pet toDto() => api.Pet(
        name: _name,
        photoUrls: _photoUrls ?? [],
        id: _id,
        category: _category?.toDto(),
        tags: _tags?.map((e) => e.toDto()).toList(growable: false) ?? [],
        status: api.PetStatusEnum.fromJson(
            _status?.name ?? PetStatusEnum.pending.name),
      );

  @override
  List<Object?> get props => [
        _name,
        _photoUrls,
        _id,
        _category,
        _tags,
        _status,
      ];
}

enum PetStatusEnum {
  available,
  pending,
  sold,
}

extension PetStatusEnumX on PetStatusEnum {
  static PetStatusEnum? fromName(String name) =>
      PetStatusEnum.values.firstWhereOrNull((element) => element.name == name);
}
