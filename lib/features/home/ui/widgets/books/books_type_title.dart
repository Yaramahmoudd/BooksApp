import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BooksTypesTitle extends StatelessWidget {
  const BooksTypesTitle({super.key, required this.bookTypeTitle});
  final String bookTypeTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bookTypeTitle,
          style: TextStyles.font18blackBold,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "المزيد",
            style: TextStyles.font14PrimaryColorBold,
          ),
        ),
      ],
    );
  }
}
