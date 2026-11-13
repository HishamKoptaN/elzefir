import 'env_config.dart';

class ImageProvidersConfig {
  static String get publicUrl => EnvConfig.config.publicUrl;

  static String resolveImageUrl(String? path) {
    final value = path?.trim() ?? '';
    if (value.isEmpty) return '';
    if (value.startsWith('http://') || value.startsWith('https://')) {
      return value;
    }

    final base = publicUrl.endsWith('/')
        ? publicUrl.substring(0, publicUrl.length - 1)
        : publicUrl;
    final relative = value.startsWith('/') ? value.substring(1) : value;
    return '$base/$relative';
  }
}
