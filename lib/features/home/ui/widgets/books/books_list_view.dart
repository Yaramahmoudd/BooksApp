import 'package:books_app/features/home/ui/widgets/books/book_item_with_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key, required this.bookType});
  final String bookType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return BookItemWithDescription(bookType: bookType);
          }),
    );
  }
}
