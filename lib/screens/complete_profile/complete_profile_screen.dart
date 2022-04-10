import 'package:components/components.dart';
import 'package:constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_user/screens/otp/otp_screen.dart';

part 'components/body.dart';
part 'components/complete_profile_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const _Body(),
    );
  }
}
