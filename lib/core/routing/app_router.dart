import 'package:books_app/features/sign_in/UI/Screen/signin.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );

      case Routes.signin:
        return MaterialPageRoute(
            builder:(_)=>Signin()
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
