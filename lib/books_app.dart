import 'package:books_app/core/routing/app_router.dart';
import 'package:books_app/core/routing/routes.dart';
import 'package:books_app/features/sign_in/UI/Screen/signin.dart';
//import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BooksApp extends StatelessWidget {
  final AppRouter appRouter;
   BooksApp({super.key,required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(

            fontFamily: "Tajawal",
          )
        ),
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Directionality(
            textDirection:TextDirection.rtl, // تحويل الاتجاه بناءً على اللغة
            child: child!,
          );
        },
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.signin,
      ),
    );
  }
}