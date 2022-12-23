import 'package:fast_shop/src/routes/app_pages.dart';
import 'package:fast_shop/src/views/forgot_password_screen.dart';
import 'package:fast_shop/src/views/home_screen.dart';
import 'package:fast_shop/src/views/login_screen.dart';
import 'package:fast_shop/src/views/menu_screen.dart';
import 'package:fast_shop/src/views/otp_auth_screen.dart';
import 'package:fast_shop/src/views/reset_password_screen.dart';
import 'package:fast_shop/src/views/splash_screen.dart';
import 'package:get/get.dart';

import '../views/registration_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Paths.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Paths.REGISTER,
      page: () => const RegistrationScreen(),
    ),
    GetPage(
      name: Paths.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Paths.FORGOT,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: Paths.OTPAUTH,
      page: () => const OTPAuthScreen(),
    ),
    GetPage(
      name: Paths.RESET,
      page: () => const ResetPasswordScreen()
    ),
    GetPage(
      name: Paths.HOME,
      page: () => const HomeScreen()
    ),
    GetPage(
      name: Paths.MENU,
      page: () => const MenuScreen()
    ),
  ];
}