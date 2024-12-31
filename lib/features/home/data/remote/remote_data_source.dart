import 'package:movie/core/services/api_service.dart';
import 'package:movie/core/utils/constants.dart';
import 'package:movie/features/home/data/model/now_playing_model.dart';

import '../../../../core/errors/exceptions.dart';

abstract class HomeRemoteDataSource {
  Future<TopRatedModel> getNowPlaying();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<TopRatedModel> getNowPlaying() async {
    final result = await apiService.getRequest(
      '${Constants.topRatedLink}${Constants.apiKey}',
    );
    if (result.statusCode == 200) {
      return TopRatedModel.fromJson(result.data);
    } else {
      throw AppExceptions(
        errorMessage: result.data['message'] ?? 'Error',
      );
    }
  }
}
