// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDXhZxYsI0ctbF-lH_GnBIohAx3wSgMom4',
    appId: '1:270520029622:web:1d602afedd5b2c2e5af117',
    messagingSenderId: '270520029622',
    projectId: 'matgarna-ddbaf',
    authDomain: 'matgarna-ddbaf.firebaseapp.com',
    storageBucket: 'matgarna-ddbaf.firebasestorage.app',
    measurementId: 'G-PY3VL9ZMZS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqYyim9wYcsPrjRtr7YbpamE4sVIlZUrQ',
    appId: '1:270520029622:android:1ca83c405a074e965af117',
    messagingSenderId: '270520029622',
    projectId: 'matgarna-ddbaf',
    storageBucket: 'matgarna-ddbaf.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAd3jCUdDyPlh2xnc-rPnO7K7siUYk7vlQ',
    appId: '1:270520029622:ios:2bb5986575ed07f85af117',
    messagingSenderId: '270520029622',
    projectId: 'matgarna-ddbaf',
    storageBucket: 'matgarna-ddbaf.firebasestorage.app',
    iosBundleId: 'com.example.shop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDXhZxYsI0ctbF-lH_GnBIohAx3wSgMom4',
    appId: '1:270520029622:web:feddd99489343dea5af117',
    messagingSenderId: '270520029622',
    projectId: 'matgarna-ddbaf',
    authDomain: 'matgarna-ddbaf.firebaseapp.com',
    storageBucket: 'matgarna-ddbaf.firebasestorage.app',
    measurementId: 'G-56QTFFCBEB',
  );
}
