import 'package:injectable/injectable.dart';
import '../globals/database/shared_pref_keys.dart';
import '../storage/local_storage.dart';

@Injectable()
class AuthStorageService {
  final LocalStorage localStorage;
  AuthStorageService(this.localStorage);
  Future<String?> getToken() async {
    return await localStorage.read(key: SharedPrefKeys.jwtToken);
  }
  Future<void> storeJwtToken(String token) async {
    await localStorage.write(
      key: SharedPrefKeys.jwtToken,
      value: token,
    );
  }
}
