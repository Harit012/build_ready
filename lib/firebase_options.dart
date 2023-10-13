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
    apiKey: 'AIzaSyDQCD3ZG9jhFvp5ou_B6opwzvfpIwNOGwc',
    appId: '1:840447785764:web:5610c0bfaf3b00a661d1b1',
    messagingSenderId: '840447785764',
    projectId: 'build-ready',
    authDomain: 'build-ready.firebaseapp.com',
    storageBucket: 'build-ready.appspot.com',
    measurementId: 'G-FT66NHPSEN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_gGhkQ0dXlN_osRPHIo6s1-hqpItuXe0',
    appId: '1:840447785764:android:d8a310b1f076ebb761d1b1',
    messagingSenderId: '840447785764',
    projectId: 'build-ready',
    storageBucket: 'build-ready.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsBCTnJmPgo27cn_HV-2-g7RBLH_jCOHg',
    appId: '1:840447785764:ios:b7fa9da02c503c6061d1b1',
    messagingSenderId: '840447785764',
    projectId: 'build-ready',
    storageBucket: 'build-ready.appspot.com',
    iosBundleId: 'com.example.buildReady',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBsBCTnJmPgo27cn_HV-2-g7RBLH_jCOHg',
    appId: '1:840447785764:ios:714146b164f47eb761d1b1',
    messagingSenderId: '840447785764',
    projectId: 'build-ready',
    storageBucket: 'build-ready.appspot.com',
    iosBundleId: 'com.example.buildReady.RunnerTests',
  );
}
