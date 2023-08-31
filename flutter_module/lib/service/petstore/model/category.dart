import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class Category extends Equatable {
  const Category({
    int? id,
    String? name,
  })  : _id = id,
        _name = name;

  final int? _id;
  final String? _name;

//   from dto
  factory Category.fromDto(api.Category dto) => Category(
        id: dto.id,
        name: dto.name,
      );

//   to dto
  api.Category toDto() => api.Category(
        id: _id,
        name: _name,
      );

  @override
  List<Object?> get props => [
        _id,
        _name,
      ];
}
