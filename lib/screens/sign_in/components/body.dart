part of '../sign_in_screen.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TapHandler(
      onTap: KeyboardHelper.hideKeyboard,
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.04),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Sign in with your email and password\nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Get.height * 0.08),
                  const _SignForm(),
                  SizedBox(height: Get.height * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        onTap: () => AuthService.logInWithGoogle(),
                      ),
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        onTap: () => AuthService.logInWithFacebook(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
