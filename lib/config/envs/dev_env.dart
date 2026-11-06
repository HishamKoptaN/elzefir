import 'package:elzefir/config/env_config.dart';
import 'package:dart_pusher_channels/dart_pusher_channels.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';

import '../env.dart';
import '../firebase/firebase_options_dev.dart';

class DevEnv extends Env {
  @override
  String get webUrl {
    return 'https://coral-shark-547480.hostingersite.com';
  }

  @override
  DataSrcMode get dataSourceMode {
    return .api;
  }

  @override
  bool get enableLogging {
    return true;
  }

  @override
  FirebaseOptions get firebaseOptions {
    return DevFirebaseOptions.currentPlatform;
  }

  @override
  String get baseUrl {
    return 'https://coral-shark-547480.hostingersite.com/api/user/';
  }

  @override
  String get authBaseUrl {
    return 'https://coral-shark-547480.hostingersite.com/auth/';
  }

  @override
  String get publicUrl {
    return 'https://coral-shark-547480.hostingersite.com/storage/';
  }

  @override
  String get vapidKey {
    return '';
  }

  @override
  PusherChannelsOptions get pusherChannelsOptions {
    return PusherChannelsOptions.fromCluster(
      scheme: 'wss',
      cluster: 'ap2',
      key: '',
      port: 443,
    );
  }
}
