import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class ProdFirebaseOptions {
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
    apiKey: 'AIzaSyCmJJAaYFuJtWCm7LBCR5PeBOGLtFxVW4Y',
    appId: '1:534866637562:web:b9fad965efe18bccb4cf43',
    messagingSenderId: '534866637562',
    projectId: 'odhia-acf3b',
    authDomain: 'odhia-acf3b.firebaseapp.com',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
    measurementId: 'G-HYJ7LGSVBF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHJKsnD0hQOguFR1KYsG2cQ04TPaU1IaA',
    appId: '1:534866637562:android:ab555d0ba1126de6b4cf43',
    messagingSenderId: '534866637562',
    projectId: 'odhia-acf3b',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-V2Qgl1zwKfkVwZeSP2An5cv_iJuczw4',
    appId: '1:534866637562:ios:6ab0afa834bd9cc2b4cf43',
    messagingSenderId: '534866637562',
    projectId: 'odhia-acf3b',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
    iosClientId:
        '534866637562-32ttjvfag8sjnko83crjiu7ec1vgjacg.apps.googleusercontent.com',
    iosBundleId: 'com.example.odhiaDash',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-V2Qgl1zwKfkVwZeSP2An5cv_iJuczw4',
    appId: '1:534866637562:ios:6ab0afa834bd9cc2b4cf43',
    messagingSenderId: '534866637562',
    projectId: 'odhia-acf3b',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
    iosClientId:
        '534866637562-32ttjvfag8sjnko83crjiu7ec1vgjacg.apps.googleusercontent.com',
    iosBundleId: 'com.example.odhiaDash',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCmJJAaYFuJtWCm7LBCR5PeBOGLtFxVW4Y',
    appId: '1:534866637562:web:6a19109b5e7bf175b4cf43',
    messagingSenderId: '534866637562',
    projectId: 'odhia-acf3b',
    authDomain: 'odhia-acf3b.firebaseapp.com',
    storageBucket: 'odhia-acf3b.firebasestorage.app',
    measurementId: 'G-528D0X40P1',
  );
}
