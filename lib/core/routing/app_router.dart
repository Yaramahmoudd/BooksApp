import 'package:books_app/features/main/ui/main_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    switch (settings.name) {
      case Routes.splashScreen: return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.mainScreen: return MaterialPageRoute(builder: (_) => const MainScreen());
    }
    return null;
  }
}
