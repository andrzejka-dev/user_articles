import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/app/core/enums.dart';
import 'package:user_articles/domain/models/details_model.dart';
import 'package:user_articles/domain/repositories/details_repository.dart';

part 'details_state.dart';

@injectable
class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit({required this.detailsRepository}) : super(const DetailsState());

  final DetailsRepository detailsRepository;

  Future<void> fetchData({required int id}) async {
    emit(const DetailsState(status: Status.loading));
    
    try {
      final articles = await detailsRepository.getDetailsForArticle(id);
      emit(DetailsState(
        status: Status.success,
        articles: articles,
      ));
    } catch (error) {
      emit(DetailsState(
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }
}