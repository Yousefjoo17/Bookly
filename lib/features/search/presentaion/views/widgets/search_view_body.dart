import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentaion/view_model/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentaion/views/widgets/Custom_search_text_field.dart';
import 'package:bookly/features/search/presentaion/views/widgets/SearchListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? category;
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(onchanged: (p0) {
            category = p0;
          }, onPressed: () async {
              await BlocProvider.of<SearchCubit>(context)
                  .fetchSearcBooks(category!);
            
          }),
          const SizedBox(height: 16),
          const Text(
            'Search results',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 16),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
