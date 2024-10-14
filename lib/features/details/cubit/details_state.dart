part of 'details_cubit.dart';

class DetailsState {
  final Status status;
  final List<DetailsModel> articles;
  final String? errorMessage;

  const DetailsState({
    this.status = Status.initial,
    this.articles = const [],
    this.errorMessage,
  });

  DetailsState copyWith({
    Status? status,
    List<DetailsModel>? articles,
    String? errorMessage,
  }) {
    return DetailsState(
      status: status ?? this.status,
      articles: articles ?? this.articles,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}