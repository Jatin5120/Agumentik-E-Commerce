import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_user/components/components.dart';
import 'package:components/components.dart';
import 'package:constants/constants.dart';
import 'package:helpers/helpers.dart';
import 'package:e_commerce_user/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_user/services/services.dart';

part 'components/body.dart';
part 'components/sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: const _Body(),
    );
  }
}
