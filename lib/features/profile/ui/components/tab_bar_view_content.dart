import 'package:books_app/features/profile/ui/components/books_tab_view.dart';
import 'package:books_app/features/profile/ui/components/quotes_tab_view.dart';
import 'package:flutter/material.dart';

class TabBarViewContent extends StatelessWidget {
  const TabBarViewContent({
    super.key,
    required this.controller,
  });
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      controller: controller,
      children: const [
        BooksTabView(),
        QuotesTabView(),
      ],
    ));
  }
}
