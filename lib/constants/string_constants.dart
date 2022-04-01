const String kLogoPath = "assets/logo/";
const String kImagesPath = "assets/images/";
const String kIllustrationPath = "assets/illustrations/";
const String kIconsPath = "assets/icons/";

final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

class StorageKeys {
  const StorageKeys._();

  static const String isNewUser = 'isNewUser';
  static const String isLoggedIn = 'isLoggedIn';
}

class Strings {
  const Strings._();

  static const String password = 'password';
}

class FirebaseErrors {
  const FirebaseErrors._();

  static const String accountExistDiffCreds = "account-exists-with-different-credential";
  static const String invalidEmail = "invalid-email";
  static const String userDisabled = "user-disabled";
  static const String userNotFound = "user-not-found";
  static const String wrongPassword = "wrong-password";
}

class SignInMethod {
  const SignInMethod._();

  static const String password = "password";
  static const String google = "google.com";
  static const String facebook = "facebook.com";
}
