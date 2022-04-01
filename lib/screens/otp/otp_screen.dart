import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/button.dart';
import 'package:shop_app/constants/constants.dart';

part 'components/body.dart';
part 'components/otp_form.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: const _Body(),
    );
  }
}
