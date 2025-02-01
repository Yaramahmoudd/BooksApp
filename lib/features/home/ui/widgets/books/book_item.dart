import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/features/home/ui/widgets/books/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.asset(
            fit: BoxFit.cover,
            AppImages.bookImage,
            height: 171.h,
            width: 115.w,
          ),
        ),
        Positioned(
          top: 146.h,
          right: 8.w,
          child: const BookRating(),
        ),
      ],
    );
  }
}
