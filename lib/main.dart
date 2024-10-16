import 'package:car_rental_app/core/utils/functions/change_status_bar_color.dart';
import 'package:car_rental_app/core/utils/functions/init_app.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'core/utils/functions/init_firebase.dart';
import 'core/utils/functions/set_portrait_orientation.dart';
import 'core/utils/routes.dart';

void main() async {
  initApp();
  setPortraitOrientation();
  changeStatusBarColor();
  await initFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      routerConfig: AppRoutes.routes,
    );
  }
}
