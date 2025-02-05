import 'package:books_app/features/main/ui/main_screen.dart';
import 'package:books_app/features/otp/UI/screens/confirm_password_screen.dart';
import 'package:books_app/features/otp/UI/screens/new_password_screen.dart';
import 'package:books_app/features/otp/UI/screens/otp_Screen.dart';
import 'package:books_app/features/sign_in/UI/screen/forgetPassword_screen.dart';
import 'package:books_app/features/sign_in/UI/screen/signin_screen.dart';
import 'package:books_app/features/signup/Ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../features/signup/Ui/screens/confirmation_screen.dart';
import '../widgets/navigator_animation.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    switch (settings.name) {
      case Routes.splashScreen: return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.mainScreen: return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.signin: return createRoute(Signin());
      case Routes.forgetpasswordScreen: return createRoute(ForgetpasswordScreen());
      case Routes.signupScreen: return createRoute(SignUpScreen());
      case Routes.otpScreen: return createRoute(OtpScreen());
      case Routes.confirmation: return createRoute(ConfirmationScreen());
      case Routes.newpassword: return createRoute(NewPasswordScreen());
      case Routes.confirempasseord: return createRoute(ConfirmPasswordScreen());
    }
    return null;
  }
}
