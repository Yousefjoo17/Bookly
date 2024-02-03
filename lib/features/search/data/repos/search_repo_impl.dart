import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  final String category;
  SearchRepoImpl({required this.category, required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=$category");
      List<BookModel> booksList = [];
      for (var book in data["items"]) {
        booksList.add(BookModel.fromJson(book));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioexception(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
