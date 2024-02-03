import 'package:bookly/features/Home/presentation/views/widgets/Best_seller_list_item.dart';
import 'package:bookly/features/search/presentaion/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellersListItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return ErrorWidget("Error, please enter a valid name");
        } else if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('Search now !'));
        }
      },
    );
  }
}
