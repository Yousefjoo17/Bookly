import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/presentation/views/widgets/Custom_book_image.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(
              imagrUrl: bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(height: 46),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .8,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? "Unknown",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(height: 32),
        const BooksActions(),
      ],
    );
  }
}
