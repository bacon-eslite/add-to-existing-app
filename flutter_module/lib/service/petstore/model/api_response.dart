import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class ApiResponse extends Equatable {
  const ApiResponse({
    int? code,
    String? type,
    String? message,
  })  : _code = code,
        _type = type,
        _message = message;

  final int? _code;
  final String? _type;
  final String? _message;

  factory ApiResponse.fromDto(api.ApiResponse dto) => ApiResponse(
        code: dto.code,
        type: dto.type,
        message: dto.message,
      );

  api.ApiResponse toDto() => api.ApiResponse(
        code: _code,
        type: _type,
        message: _message,
      );

  @override
  List<Object?> get props => [
        _code,
        _type,
        _message,
      ];
}
