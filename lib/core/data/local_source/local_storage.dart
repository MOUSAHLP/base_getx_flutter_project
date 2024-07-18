import 'package:get_storage/get_storage.dart';

class LocalStorage {
  // GetStorage instance
  final _box = GetStorage();

  // Store a value
  void writeValue(String key, dynamic value) {
    _box.write(key, value);
  }

  // Read a value
  dynamic readValue(String key) {
    return _box.read(key);
  }

  // Remove a value
  void removeValue(String key) {
    _box.remove(key);
  }

  // Clear all stored values
  void clearAll() {
    _box.erase();
  }
}
