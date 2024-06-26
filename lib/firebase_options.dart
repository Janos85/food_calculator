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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD333guOALDhiWYsEK-zCsQOw9wOICzL9M',
    appId: '1:545725190299:android:537624e9b712193096b63e',
    messagingSenderId: '545725190299',
    projectId: 'food-calculator-23',
    storageBucket: 'food-calculator-23.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkTAeM7tMDSPa0F2RFn6H6yymLIKEQ8-g',
    appId: '1:545725190299:ios:cbec7128158d5fa896b63e',
    messagingSenderId: '545725190299',
    projectId: 'food-calculator-23',
    storageBucket: 'food-calculator-23.appspot.com',
    iosBundleId: 'com.example.foodCalculator',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA6glb3n5X-_nHJirJO1xN-M6g20c8Cw34',
    appId: '1:545725190299:web:ab541a428bbf1c1296b63e',
    messagingSenderId: '545725190299',
    projectId: 'food-calculator-23',
    authDomain: 'food-calculator-23.firebaseapp.com',
    storageBucket: 'food-calculator-23.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkTAeM7tMDSPa0F2RFn6H6yymLIKEQ8-g',
    appId: '1:545725190299:ios:cbec7128158d5fa896b63e',
    messagingSenderId: '545725190299',
    projectId: 'food-calculator-23',
    storageBucket: 'food-calculator-23.appspot.com',
    iosBundleId: 'com.example.foodCalculator',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA6glb3n5X-_nHJirJO1xN-M6g20c8Cw34',
    appId: '1:545725190299:web:85e4788098cd9b7196b63e',
    messagingSenderId: '545725190299',
    projectId: 'food-calculator-23',
    authDomain: 'food-calculator-23.firebaseapp.com',
    storageBucket: 'food-calculator-23.appspot.com',
  );

}