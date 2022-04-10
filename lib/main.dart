import 'package:constants/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:e_commerce_user/controllers/controllers.dart';
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
  Get.put<StorageController>(StorageController());
  Get.put<UserDataController>(UserDataController());
  Get.put<NavController>(NavController());
  Get.put<AuthController>(AuthController());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agumentik E-Commerce',
      theme: kThemeData,
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
