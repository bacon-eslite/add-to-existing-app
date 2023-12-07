import 'package:petstore_api/api.dart' hide Pet, Category, Tag, ApiResponse;

import '../model/model.dart';

class PetService {
  // create singleton class
  static final PetService _instance = PetService._();

  final PetApi api;

  PetService._({PetApi? api}) : api = api ?? PetApi();

  factory PetService() => _instance;

  Future<Pet?> addPet(Pet pet) async {
    final resp = await api.addPet(pet.toDto());
    if (resp == null) return null;
    return Pet.fromDto(resp);
  }

  Future<Pet?> getPetById(int id) async {
    final resp = await api.getPetById(id);
    if (resp == null) return null;
    return Pet.fromDto(resp);
  }

  Future<List<Pet>?> findPetsByStatus(String status) async {
    final resp = await api.findPetsByStatus(status: status);
    if (resp == null) return null;
    return resp.map((e) => Pet.fromDto(e)).toList();
  }

  Future<Pet?> updatePet(Pet pet) async {
    final resp = await api.updatePet(pet.toDto());
    if (resp == null) return null;
    return Pet.fromDto(resp);
  }

  Future<void> deletePet(int id) async {
    await api.deletePet(id);
  }
}
