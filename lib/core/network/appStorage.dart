

import 'package:get_storage/get_storage.dart';

class StorageService {
  final GetStorage _box = GetStorage();

  Future<void> initStorage() async {
    await GetStorage.init();
  }

  Future<void> write(String key, dynamic value) async {
    await _box.write(key, value);
  }

  T? read<T>(String key) {
    return _box.read<T>(key);
  }

  Future<void> remove(String key) async {
    await _box.remove(key);
  }

  Future<void> clear() async {
    await _box.erase();
  }
}