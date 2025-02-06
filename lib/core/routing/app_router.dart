import 'package:books_app/features/home/ui/empty_notification_screen.dart';
import 'package:books_app/features/home/ui/empty_search_screen.dart';
import 'package:books_app/features/main/ui/main_screen.dart';
import 'package:books_app/features/otp/UI/screens/confirm_password_screen.dart';
import 'package:books_app/features/otp/UI/screens/new_password_screen.dart';
import 'package:books_app/features/otp/UI/screens/otp_Screen.dart';
import 'package:books_app/features/profile/ui/add_book_screen.dart';
import 'package:books_app/features/profile/ui/edit_book_screen.dart';
import 'package:books_app/features/profile/ui/edit_my_data_screen.dart';
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
      case Routes.newpassword: return createRoute(NewPasswordScreen());
      case Routes.confirempasseord: return createRoute(ConfirmPasswordScreen());
      case Routes.confirmation: return createRoute(ConfirmationScreen());
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      //registration
      case Routes.signin:
        return createRoute(const Signin());
      case Routes.forgetpasswordScreen:
        return createRoute(const ForgetpasswordScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());

      //home
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.emptySearchScreen:
        return MaterialPageRoute(builder: (_) => const EmptySearchScreen());
      case Routes.emptyNotificationScreen:
        return MaterialPageRoute(
            builder: (_) => const EmptyNotificationScreen());

      //profile
      case Routes.editBookScreen:
        return MaterialPageRoute(builder: (_) => const EditBookScreen());
      case Routes.editMyDataScreen:
        return MaterialPageRoute(builder: (_) => const EditMyDataScreen());
      case Routes.addBookScreen:
        return MaterialPageRoute(builder: (_) => const AddBookScreen());
    }
    return null;
  }
}
