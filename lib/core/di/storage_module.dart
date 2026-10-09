import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../storage/local_storage.dart';
import '../storage/secure_storage.dart';
import '../storage/web_storage.dart';

@module
abstract class StorageModule {
  @singleton
  LocalStorage localStorage() {
    if (kIsWeb) {
      return WebStorage();
    }
    return SecureStorage(const FlutterSecureStorage());
  }
}
