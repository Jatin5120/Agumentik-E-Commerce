part of '../login_success_screen.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: Get.height * 0.4, //40%
        ),
        SizedBox(height: Get.height * 0.08),
        const Text(
          "Login Success",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: Get.width * 0.6,
          child: Button(
            label: "Back to home",
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
