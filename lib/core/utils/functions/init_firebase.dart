import 'package:firebase_core/firebase_core.dart';

import '../../../firebase_options.dart';

Future<void> initFirebase() async {
  // Initialize Firebase app with the configuration from firebase_options.dart
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
