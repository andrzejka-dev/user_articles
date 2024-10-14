import 'package:injectable/injectable.dart';
import 'package:user_articles/data/remote_data_sources/details_remote_data_source.dart';
import 'package:user_articles/domain/models/details_model.dart';

@injectable
class DetailsRepository {
  DetailsRepository({required this.remoteDataSource});

  final DetailsRemoteRetrofitDataSource remoteDataSource;

  Future<List<DetailsModel>> getDetailsForArticle(int id) async {
    final allContents = await remoteDataSource.getDetails();

    return allContents
        .where((content) => content.id == id)
        .toList();
  }
}