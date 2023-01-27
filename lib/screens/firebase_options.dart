// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC3GtdiYvDD8_Qt_qfuOqJEJunY_7hXQrs',
    appId: '1:450328976964:web:f73853e4d693c71b6f2611',
    messagingSenderId: '450328976964',
    projectId: 'sec-b-ab9e8',
    authDomain: 'sec-b-ab9e8.firebaseapp.com',
    storageBucket: 'sec-b-ab9e8.appspot.com',
    measurementId: 'G-PEX0DTED8K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCez1bY6r6F8NV9TOJGf15WvJafPgu6HC4',
    appId: '1:450328976964:android:74c7691f941654766f2611',
    messagingSenderId: '450328976964',
    projectId: 'sec-b-ab9e8',
    storageBucket: 'sec-b-ab9e8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUBAI3YaVe_559YL-Lp_4Ge6hl37CcefM',
    appId: '1:450328976964:ios:804dad4513c1314a6f2611',
    messagingSenderId: '450328976964',
    projectId: 'sec-b-ab9e8',
    storageBucket: 'sec-b-ab9e8.appspot.com',
    iosClientId:
        '450328976964-8eo6vn8bqb6c4rldqksrkin161l94hh5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseflutter',
  );
}
