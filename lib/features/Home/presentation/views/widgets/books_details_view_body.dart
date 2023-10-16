import 'package:bookly/features/Home/presentation/views/widgets/Books_details_section.dart';
import 'package:bookly/features/Home/presentation/views/widgets/Custom_book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/Similar_Books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      //definitely it alreay scrolls
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                 CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                 Expanded(child: SizedBox(height: 32)),
                SimilarBooksSection(),
                 SizedBox(height: 18),
              ],
            ),
          ),
        )
      ],
    );
  }
}



