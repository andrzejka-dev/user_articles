import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/domain/models/details_model.dart';
import 'package:retrofit/retrofit.dart';

part 'details_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class DetailsRemoteRetrofitDataSource {
  @factoryMethod
  factory DetailsRemoteRetrofitDataSource(Dio dio) =
      _DetailsRemoteRetrofitDataSource;

  @GET('/articles')
  Future<List<DetailsModel>> getDetails();
}