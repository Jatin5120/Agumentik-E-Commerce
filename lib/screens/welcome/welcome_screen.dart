import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controllers/controllers.dart';

import '../../components/button.dart';
import '../../constants/constants.dart';

part 'components/body.dart';
part 'components/welcome_content.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}
