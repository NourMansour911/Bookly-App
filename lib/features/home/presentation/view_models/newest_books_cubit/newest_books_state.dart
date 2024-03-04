part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {
  const NewestBooksState();
}

class NewsetBooksInitial extends NewestBooksState {}

class NewsetBooksLoading extends NewestBooksState {}

class NewsetBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}
