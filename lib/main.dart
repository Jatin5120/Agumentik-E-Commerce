import 'package:constants/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop_app/controllers/controllers.dart';

import 'constants/constants.dart';
import 'screens/welcome/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  initializeControllers();
  runApp(const MyApp());
}

void initializeControllers() {
  Get.put(StorageController());
  Get.put(UserDataController());
  Get.put(NavController());
  Get.put(AuthController());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agumentik E-Commerce',
      theme: kThemeData,
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
