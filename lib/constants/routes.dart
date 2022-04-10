import 'package:flutter/widgets.dart';
import 'package:e_commerce_user/screens/cart/cart_screen.dart';
import 'package:e_commerce_user/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_commerce_user/screens/dashboard_screens/dashboard_screens.dart';
import 'package:e_commerce_user/screens/details/details_screen.dart';
import 'package:e_commerce_user/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_user/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_user/screens/otp/otp_screen.dart';
import 'package:e_commerce_user/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_user/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_user/screens/welcome/welcome_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  Dashboard.routeName: (context) => const Dashboard(),
};
