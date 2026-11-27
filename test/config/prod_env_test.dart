import 'package:elzefir/config/envs/prod_env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('عناوين الإنتاج تشير إلى خادم فعلي وليس إلى مضيف فارغ', () {
    final env = ProdEnv();

    for (final url in [env.baseUrl, env.authBaseUrl, env.publicUrl]) {
      final uri = Uri.parse(url);
      expect(uri.scheme, 'https');
      expect(uri.host, isNotEmpty);
    }
    expect(Uri.parse(env.baseUrl).path, '/api/user/');
  });
}
