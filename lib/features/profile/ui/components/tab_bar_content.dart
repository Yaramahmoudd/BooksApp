// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TabBarContent extends StatelessWidget {
  const TabBarContent({
    super.key,
    required this.controller,
  });
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorWeight: 1.h,
      tabAlignment: TabAlignment.center,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: Colors.transparent,
      indicatorColor: ColorsManager.primaryColor,
      controller: controller,
      tabs: [
        Tab(
          icon: SizedBox(
            width: 156.w,
            child: SvgPicture.asset(
              controller.index == 0
                  ? AppIcons.quoteDownColored
                  : AppIcons.quoteDown,
              color: ColorsManager.primaryColor,
            ),
          ),
        ),
        Tab(
          icon: SizedBox(
            width: 156.w,
            child: SvgPicture.asset(
              controller.index != 0 ? AppIcons.bookColored : AppIcons.book,
              color: ColorsManager.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
