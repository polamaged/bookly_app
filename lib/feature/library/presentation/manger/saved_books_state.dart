part of 'saved_books_cubit.dart';

abstract class SavedBooksState extends Equatable {
  const SavedBooksState();

  @override
  List<Object> get props => [];
}

class SavedBooksInitial extends SavedBooksState {}
class SavedBooksLoading extends SavedBooksState {}
class SavedBooksSuccess extends SavedBooksState {}
class SavedBooksFailure extends SavedBooksState {
  final String errmessage;
  const SavedBooksFailure({required this.errmessage});

}


