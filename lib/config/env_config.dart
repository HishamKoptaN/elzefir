import 'package:elzefir/config/envs/local_env.dart';

import 'envs/dev_env.dart';
import 'env.dart';
import 'envs/prod_env.dart';

enum DataSrcMode { api, mock }

class EnvConfig {
  static final Env _config = _getConfig();
  static Env _getConfig() {
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    switch (env) {
      case 'local':
        return LocalEnv();
      case 'dev':
        return DevEnv();
      case 'prod':
        return ProdEnv();
      default:
        return DevEnv();
    }
  }

  static Env get config => _config;
}
