import 'package:books_app/features/sign_in/UI/screen/signin_screen.dart';
import 'package:flutter/cupertino.dart';

Route createRoute(Widget screenName) {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation)=>screenName,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0); // يبدأ من خارج الشاشة على اليمين
      const end = Offset.zero; // ينتهي عند موقعه الطبيعي
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}