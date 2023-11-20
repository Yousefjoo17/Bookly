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
            child: CustomBookImage(imagrUrl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nasa.gov%2Fmissions%2Fradar-points-to-moon-being-more-metallic-than-researchers-thought%2F&psig=AOvVaw0kxcNpAC1s8AqaeEDm_ryf&ust=1700605674422000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLCw4fzP04IDFQAAAAAdAAAAABAE"),
          );
        },
      ),
    );
  }
}