import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/home/ui/widgets/books/books_list_view.dart';
import 'package:books_app/features/home/ui/widgets/books/books_type_title.dart';
import 'package:books_app/features/home/ui/widgets/categories_list.dart';
import 'package:books_app/features/home/ui/widgets/continue_reading_list_view.dart';
import 'package:books_app/features/home/ui/widgets/home_app_bar.dart';
import 'package:books_app/features/home/ui/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            children: [
              const HomeAppBar(),
              verticalSpace(16),
              const HomeSearchBar(),
              verticalSpace(16),
              const CategoriesList(),
              verticalSpace(16),
              const BooksTypesTitle(bookTypeTitle: "أشهر الكتب"),
              verticalSpace(16),
              const BooksListView(
                bookType: "أدب",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("أكمل القراءه", style: TextStyles.font18blackBold)
                ],
              ),
              verticalSpace(16),
              const ContinueReadingListView(),
              verticalSpace(16),
              const BooksTypesTitle(bookTypeTitle: "النفس والتطوير"),
              verticalSpace(16),
              const BooksListView(bookType: "نفسي"),
              const BooksTypesTitle(bookTypeTitle: "جريمه ورعب"),
              verticalSpace(16),
              const BooksListView(bookType: "جريمه"),
            ],
          ),
        ),
      ),
    );
  }
}
