import 'package:get_storage/get_storage.dart';

class CacheService {
  final GetStorage _storage = GetStorage();

  // Save data
  void write(String key, dynamic value) {
    _storage.write(key, value);
  }

  // Read data
  T? read<T>(String key) {
    return _storage.read<T>(key);
  }

  // Remove data
  void remove(String key) {
    _storage.remove(key);
  }

  // Check if key exists
  bool hasData(String key) {
    return _storage.hasData(key);
  }
}
