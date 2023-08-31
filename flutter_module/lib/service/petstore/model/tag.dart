import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class Tag extends Equatable {
  const Tag({
    int? id,
    String? name,
  })  : _id = id,
        _name = name;

  final int? _id;
  final String? _name;

//   from dto
  factory Tag.fromDto(api.Tag dto) => Tag(
        id: dto.id,
        name: dto.name,
      );

//   to dto
  api.Tag toDto() => api.Tag(
        id: _id,
        name: _name,
      );

  @override
  List<Object?> get props => [
        _id,
        _name,
      ];
}
