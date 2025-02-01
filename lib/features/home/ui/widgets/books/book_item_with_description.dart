import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/features/home/ui/widgets/books/book_description.dart';
import 'package:books_app/features/home/ui/widgets/books/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItemWithDescription extends StatelessWidget {
  const BookItemWithDescription({super.key, required this.bookType});
  final String bookType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        children: [
          const BookItem(),
          verticalSpace(8),
           BookDescription(bookType: bookType,),
        ],
      ),
    );
  }
}
