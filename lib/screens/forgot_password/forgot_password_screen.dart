import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/components.dart';
import 'package:shop_app/constants/constants.dart';

part 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  const ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: const Body(),
    );
  }
}
