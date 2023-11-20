import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/Custom_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImage(imagrUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nasa.gov%2Fmissions%2Fradar-points-to-moon-being-more-metallic-than-researchers-thought%2F&psig=AOvVaw0kxcNpAC1s8AqaeEDm_ryf&ust=1700605674422000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLCw4fzP04IDFQAAAAAdAAAAABAE"),
        ),
        const SizedBox(height: 46),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .8,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 32),
        const BooksActions(),
      ],
    );
  }
}
