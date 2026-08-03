import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DevFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        return windows;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }


  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDkDmz0_Ee1GOD74Fxw23SYVmzTEP_-Odg',
    appId: '1:947607550746:web:e8bb6c77a323751a720aa3',
    messagingSenderId: '947607550746',
    projectId: 'elzefir-dev',
    authDomain: 'elzefir-dev.firebaseapp.com',
    storageBucket: 'elzefir-dev.firebasestorage.app',
    measurementId: 'G-TTNHN9CD8X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrQbuzT6edhEEEJj6b1eT2l8cU-NgfTkQ',
    appId: '1:947607550746:android:a7e5617e9f22e647720aa3',
    messagingSenderId: '947607550746',
    projectId: 'elzefir-dev',
    storageBucket: 'elzefir-dev.firebasestorage.app',
  );
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhLHUlSwp1uS33jy4m7necU1nQTg8IgR4',
    appId: '1:497159259475:ios:b5a6f3acb291baa1b7cda6',
    messagingSenderId: '497159259475',
    projectId: 'elzefir-dev',
    storageBucket: 'elzefir-dev.firebasestorage.app',
    iosBundleId: 'com.elzefir.restaurant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAhLHUlSwp1uS33jy4m7necU1nQTg8IgR4',
    appId: '1:497159259475:ios:b5a6f3acb291baa1b7cda6',
    messagingSenderId: '497159259475',
    projectId: 'elzefir-dev',
    storageBucket: 'elzefir-dev.firebasestorage.app',
    iosBundleId: 'com.elzefir.restaurant',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9UKhAj5LrK0N6GOFAHw9Ha5ZofkogvRo',
    appId: '1:497159259475:web:d3b391d8d963dce2b7cda6',
    messagingSenderId: '497159259475',
    projectId: 'elzefir-dev',
    authDomain: 'elzefir-dev.firebaseapp.com',
    storageBucket: 'elzefir-dev.firebasestorage.app',
    measurementId: 'G-CDVDNPMP2S',
  );
}
