import 'package:dartz/dartz.dart';
import 'package:movie/core/errors/failure.dart';
import 'package:movie/core/services/use_case.dart';
import 'package:movie/features/home/domain/repo/repo.dart';

import '../../data/model/now_playing_model.dart';

class HomeUseCase extends UseCase<TopRatedModel, Param> {
  final HomeRepo homeRepo;
  HomeUseCase(this.homeRepo);

  @override
  Future<Either<ServerFailure, TopRatedModel>> call(Param params) async {
    params.loading(true);
    final result = homeRepo.getNowPlaying();
    result.then((value) {
      params.loading(false);
    });
    return result;
  }
}
