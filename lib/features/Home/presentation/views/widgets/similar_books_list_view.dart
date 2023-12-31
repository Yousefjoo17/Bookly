import 'package:bookly/features/Home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: CustomBookImage(imagrUrl: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
          );
        },
      ),
    );
  }
}