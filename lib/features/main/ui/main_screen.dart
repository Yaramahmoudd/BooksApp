import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/features/chats/ui/chats_screen.dart';
import 'package:books_app/features/home/ui/screens/home_screen.dart';
import 'package:books_app/features/library/ui/library_screen.dart';
import 'package:books_app/features/main/ui/widgets/nav_bar_item.dart';
import 'package:books_app/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  List<Map<String, dynamic>> navigationItems = [
    {'title': 'الرئيسية', 'assetName': AppIcons.home},
    {'title': 'مكتبتي', 'assetName': AppIcons.book},
    {'title': 'المحادثات', 'assetName': AppIcons.messages},
    {'title': 'الحساب', 'assetName': AppIcons.frame},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex,
          children: const [
            HomeScreen(),
            LibraryScreen(),
            ChatsScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 88.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorsManager.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: navigationItems.asMap().entries.map<Widget>((MapEntry e) {
            int index = e.key;
            Map value = e.value;
            return NavigationBarItem(
              title: value['title'],
              assetName: value['assetName'],
              isSelected: selectedIndex == index,
              onTap: () {
                setState(() => selectedIndex = index);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
