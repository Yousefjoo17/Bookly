import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  Future<void> fetchSearcBooks(String category) async {
    emit(SearchLoading());
    var result =
        await SearchRepoImpl(category: category, apiService: ApiService(Dio()))
            .fetchSearchedBooks();
    result.fold((fail) {
      emit(SearchFailure(fail.errMessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
