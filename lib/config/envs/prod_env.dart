import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import '../env.dart';
import '../env_config.dart';
import '../firebase/firebase_options_prod.dart';

class ProdEnv implements Env {
  @override
  String get webUrl {
    return '';
  }

  @override
  DataSrcMode get dataSourceMode {
    return .api;
  }
  @override
  FirebaseOptions get firebaseOptions {
    return ProdFirebaseOptions.currentPlatform;
  }
  @override
  String get baseUrl {
    return 'https://';
  }
  @override
  String get authBaseUrl {
    return 'https://';
  }
  @override
  String get publicUrl {
    return 'https://beige-elk-309228.hostingersite.com/storage/';
  }
  @override
  bool get enableLogging => false;
  @override
  String get vapidKey =>
      '';
  @override
  @override
  PusherChannelsOptions get pusherChannelsOptions =>
      PusherChannelsOptions.fromCluster(
        scheme: 'wss',
        cluster: 'ap2',
        key: '',
        port: 443,
      );
}

final Env env = ProdEnv();
