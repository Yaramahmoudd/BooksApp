import 'package:books_app/features/home/ui/widgets/continue_reading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueReadingListView extends StatelessWidget {
  const ContinueReadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const ContinueReadingItem();
        },
      ),
    );
  }
}
