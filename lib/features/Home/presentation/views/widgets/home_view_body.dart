import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(height: 54),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Best seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
