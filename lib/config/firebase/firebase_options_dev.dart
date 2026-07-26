import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DevFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBboJxmtFdyQjIrpDqjCeyybFSEhW5jhOQ',
    appId: '1:314873010712:web:02813cde2997c4a02c016d',
    messagingSenderId: '314873010712',
    projectId: 'odhia-dev',
    authDomain: 'odhia-dev.firebaseapp.com',
    storageBucket: 'odhia-dev.firebasestorage.app',
    measurementId: 'G-5PDXST9YFJ',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBboJxmtFdyQjIrpDqjCeyybFSEhW5jhOQ',
    appId: '1:314873010712:web:2606e1c9bb04138f2c016d',
    messagingSenderId: '314873010712',
    projectId: 'odhia-dev',
    authDomain: 'odhia-dev.firebaseapp.com',
    storageBucket: 'odhia-dev.firebasestorage.app',
    measurementId: 'G-05LVTLEWY7',
  );
}
