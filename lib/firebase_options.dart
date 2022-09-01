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
        return macos;
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
    apiKey: 'AIzaSyA2cyVaslQRlMoFyUAOy1BDSrcRiUBTdow',
    appId: '1:436859752497:web:e52d1eaad2f65bb00f4510',
    messagingSenderId: '436859752497',
    projectId: 'grocery-flutter-course-d7163',
    authDomain: 'grocery-flutter-course-d7163.firebaseapp.com',
    storageBucket: 'grocery-flutter-course-d7163.appspot.com',
    measurementId: 'G-6EKMKC2J6C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAo29vNQm1_8m812hGtHhxSI_DPu-Y8pG0',
    appId: '1:436859752497:android:032f8e8ac23bd3e80f4510',
    messagingSenderId: '436859752497',
    projectId: 'grocery-flutter-course-d7163',
    storageBucket: 'grocery-flutter-course-d7163.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1UZAv-Y2FJEJ5LA59NWiSwOnACZVhHUE',
    appId: '1:436859752497:ios:6eac8021b193bbc90f4510',
    messagingSenderId: '436859752497',
    projectId: 'grocery-flutter-course-d7163',
    storageBucket: 'grocery-flutter-course-d7163.appspot.com',
    androidClientId: '436859752497-u8uhido07478utvej36mc93mn21eekj9.apps.googleusercontent.com',
    iosClientId: '436859752497-qire28nrsvlv2h7n98isur5l7eeqodmk.apps.googleusercontent.com',
    iosBundleId: 'com.example.groceryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1UZAv-Y2FJEJ5LA59NWiSwOnACZVhHUE',
    appId: '1:436859752497:ios:6eac8021b193bbc90f4510',
    messagingSenderId: '436859752497',
    projectId: 'grocery-flutter-course-d7163',
    storageBucket: 'grocery-flutter-course-d7163.appspot.com',
    androidClientId: '436859752497-u8uhido07478utvej36mc93mn21eekj9.apps.googleusercontent.com',
    iosClientId: '436859752497-qire28nrsvlv2h7n98isur5l7eeqodmk.apps.googleusercontent.com',
    iosBundleId: 'com.example.groceryApp',
  );
}
