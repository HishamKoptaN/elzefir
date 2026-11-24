import 'package:injectable/injectable.dart';

import '../storage/local_storage.dart';
import 'token_store.dart';

@Injectable()
class AuthStorageService {
  AuthStorageService(this.localStorage)
      : _tokenStore = createTokenStore(localStorage);

  final LocalStorage localStorage;
  final TokenStore _tokenStore;

  Future<String?> getToken() => _tokenStore.read();

  Future<void> storeJwtToken(String token) => _tokenStore.write(token);

  Future<void> clear() => _tokenStore.clear();
}
