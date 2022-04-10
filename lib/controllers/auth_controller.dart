import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:e_commerce_user/controllers/controllers.dart';
import 'package:e_commerce_user/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_user/screens/welcome/welcome_screen.dart';

import '../screens/dashboard_screens/dashboard_screens.dart';

class AuthController extends GetxController {
  final StorageController _storageController = Get.find();
  final UserDataController _userDataController = Get.find();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final Rx<GoogleSignInAccount?> _googleAccount = Rx<GoogleSignInAccount?>(null);

  final RxBool _isLoggedIn = false.obs;
  final RxBool _isNewUser = true.obs;

  GoogleSignInAccount? get googleAccount => _googleAccount.value;

  set googleAccount(GoogleSignInAccount? account) => _googleAccount.value = account;

  bool get isLoggedIn => _isLoggedIn.value;

  set isLoggedIn(bool isLoggedIn) => _isLoggedIn.value = isLoggedIn;

  bool get isNewUser => _isNewUser.value;

  set isNewUser(bool isNewUser) => _isNewUser.value = isNewUser;

  @override
  void onReady() {
    super.onReady();
    ever(_isNewUser, _handleNewUser);
    isNewUser = _storageController.isNewUser;
    ever(_isLoggedIn, _handleLogin);
    isLoggedIn = _storageController.isLoggedIn;

    _userDataController.user = _firebaseAuth.currentUser;

    _firebaseAuth.authStateChanges().listen((user) {
      _userDataController.user = user;
      isLoggedIn = user != null;
    });

    log("isLoggedIn --> $isLoggedIn");
    log("isNewUser --> $isNewUser");
  }

  // -------------------- State management Methods --------------------

  void _handleNewUser(bool isFirstTime) {
    if (isFirstTime) {
      if (Get.currentRoute != WelcomeScreen.routeName) {
        Get.offAllNamed(WelcomeScreen.routeName);
      }
    } else {
      _handleLogin(isLoggedIn);
    }
    _storageController.writeNewUser(isFirstTime);
  }

  void _handleLogin(bool loggedIn) {
    if (loggedIn) {
      log(_userDataController.user.toString());
      if (Get.currentRoute != Dashboard.routeName) {
        Get.offAllNamed(Dashboard.routeName);
      }
    } else {
      if (Get.currentRoute != SignInScreen.routeName) {
        Get.offAllNamed(SignInScreen.routeName);
      }
    }
    _storageController.writeLoggedIn(loggedIn);
  }

  // -------------------- Authentication Methods --------------------

  void login() {
    isLoggedIn = true;
    log("Login = true");
  }

  void logout() {
    isLoggedIn = false;
    log("Login = false");
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    _googleAccount.value = await _googleSignIn.signOut();
    logout();
  }
}
