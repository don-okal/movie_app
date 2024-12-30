import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LocaleDataSource {
  final GetStorage _storage = GetStorage();
  final String _localeKey = 'locale';

  // Save locale to storage
  Future<void> saveLocale(Locale locale) async {
    await _storage.write(_localeKey, locale.languageCode);
  }

  // Retrieve saved locale from storage
  Locale? getSavedLocale() {
    String? languageCode = _storage.read(_localeKey);

    // If no locale is saved, return null (or you can return a default locale)
    if (languageCode == null) return null;

    return Locale(languageCode);
  }

  // Remove saved locale (optional, if needed)
  Future<void> clearLocale() async {
    await _storage.remove(_localeKey);
  }
}
