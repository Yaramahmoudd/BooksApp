import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyNotificationScreen extends StatelessWidget {
  const EmptyNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('الإشعارات', style: TextStyles.font22blackMedium),
            centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.emptyNotifications, height: 190.h, width: 170.w),
              verticalSpace(20),
              Text(
                'لا يوجد إشعارات حتى الان',
                style: TextStyles.font18grey7DRegualar,
              )
            ],
          ),
        ));
  }
}
