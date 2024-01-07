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
    apiKey: 'AIzaSyAbJDBaWr9Hx6hm2yEOuR5-m2-K46HUaHc',
    appId: '1:550560413297:web:795a62388b8bf57e1fcdd0',
    messagingSenderId: '550560413297',
    projectId: 'ecommerce-bdbb9',
    authDomain: 'ecommerce-bdbb9.firebaseapp.com',
    storageBucket: 'ecommerce-bdbb9.appspot.com',
    measurementId: 'G-3SBTKQHCFN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQgr1rKrNbzYkQ5vYyzazmOy8j2ljJ0Oc',
    appId: '1:550560413297:android:e2284a7114c051a71fcdd0',
    messagingSenderId: '550560413297',
    projectId: 'ecommerce-bdbb9',
    storageBucket: 'ecommerce-bdbb9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoKK6vYTM7lGBqLBL8_Txo3apPY7Ha8j4',
    appId: '1:550560413297:ios:c5825cfa639ba8661fcdd0',
    messagingSenderId: '550560413297',
    projectId: 'ecommerce-bdbb9',
    storageBucket: 'ecommerce-bdbb9.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoKK6vYTM7lGBqLBL8_Txo3apPY7Ha8j4',
    appId: '1:550560413297:ios:767a4f972ec702071fcdd0',
    messagingSenderId: '550560413297',
    projectId: 'ecommerce-bdbb9',
    storageBucket: 'ecommerce-bdbb9.appspot.com',
    iosBundleId: 'com.example.ecommerce.RunnerTests',
  );
}
