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
    apiKey: 'AIzaSyAEHezTaBR4Tvk_98BjUuyribKhJrza2rM',
    appId: '1:267742275880:web:371ab1b6d0d4b69d0f081d',
    messagingSenderId: '267742275880',
    projectId: 'cyphertext-83f10',
    authDomain: 'cyphertext-83f10.firebaseapp.com',
    storageBucket: 'cyphertext-83f10.appspot.com',
    measurementId: 'G-BV9LK3KCH8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPHu3ffNf7I85S2b8L9D23Hv4EyhBpqgc',
    appId: '1:267742275880:android:bf40b579940eb81f0f081d',
    messagingSenderId: '267742275880',
    projectId: 'cyphertext-83f10',
    storageBucket: 'cyphertext-83f10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAGRlfRrNZJ0MCuF7Kjdx-u1y4P6sGGsU',
    appId: '1:267742275880:ios:b21c2966395454810f081d',
    messagingSenderId: '267742275880',
    projectId: 'cyphertext-83f10',
    storageBucket: 'cyphertext-83f10.appspot.com',
    iosClientId: '267742275880-5a0d3tt01feua7p955u2s12vc0bhk34d.apps.googleusercontent.com',
    iosBundleId: 'com.nxs.cyphertext',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAGRlfRrNZJ0MCuF7Kjdx-u1y4P6sGGsU',
    appId: '1:267742275880:ios:aceaf73258a7af5f0f081d',
    messagingSenderId: '267742275880',
    projectId: 'cyphertext-83f10',
    storageBucket: 'cyphertext-83f10.appspot.com',
    iosClientId: '267742275880-cu9rl1f75k9k1ad2domlnlq4ejsga3o3.apps.googleusercontent.com',
    iosBundleId: 'com.nxs.cyphertext.RunnerTests',
  );
}
