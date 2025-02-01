import 'package:books_app/books_app.dart';
import 'package:books_app/core/routing/app_router.dart';
import 'package:books_app/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();


  runApp(
    BooksApp(
      appRouter: AppRouter(),
    ),
    // EasyLocalization(
    //     supportedLocales: [Locale('ar'),Locale('en')],
    //     path: 'assets/translations', // <-- change the path of the translation files
    //     fallbackLocale: Locale('ar'),
    //     assetLoader: CodegenLoader(),
    //     saveLocale: true,
    //     child:
    // )
      );
}


// flutter pub run easy_localization:generate --source-dir ./assets/translations
// flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o localization_keys.g.dart