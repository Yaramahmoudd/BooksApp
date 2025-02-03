import 'package:books_app/core/routing/app_router.dart';
import 'package:books_app/core/routing/routes.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksApp extends StatelessWidget {
  final AppRouter appRouter;
  const BooksApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child ?? const SizedBox(),
          );
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: ColorsManager.white,
          ),
          appBarTheme: const AppBarTheme(backgroundColor: ColorsManager.white),
          scaffoldBackgroundColor: ColorsManager.white,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: ColorsManager.white,
          ),
          tabBarTheme: TabBarTheme(
              splashFactory: NoSplash.splashFactory,
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Tajawal'),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.mainScreen,
      ),
    );
  }
}
