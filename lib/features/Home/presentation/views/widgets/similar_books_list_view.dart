import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custome_error_widget.dart';
import 'package:bookly/features/Home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: CustomBookImage(
                      imagrUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomloadingIndicatorWidget();
        }
      },
    );
  }
}
