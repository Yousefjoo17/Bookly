import 'package:bloc/bloc.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeatuBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((booksfailure) {
      emit(FeaturedBooksFailure(errMessage: booksfailure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
