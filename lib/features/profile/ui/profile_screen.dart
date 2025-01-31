import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/features/profile/ui/components/preofile_header_bar.dart';
import 'package:books_app/features/profile/ui/components/tab_bar_content.dart';
import 'package:books_app/features/profile/ui/components/tab_bar_view_content.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PreofileHeaderBar(),
          verticalSpace(25),
          TabBarContent(controller: tabController),
          TabBarViewContent(controller: tabController),
        ],
      ),
    );
  }
}
