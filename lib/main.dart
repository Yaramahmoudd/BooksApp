import 'package:books_app/books_app.dart';
import 'package:books_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();

  runApp(BooksApp(
    appRouter: AppRouter(),
  ));
}
