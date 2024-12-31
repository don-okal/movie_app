import 'package:dartz/dartz.dart';
import 'package:movie/core/errors/failure.dart';
import 'package:movie/features/home/data/model/now_playing_model.dart';
import 'package:movie/features/home/data/remote/remote_data_source.dart';
import 'package:movie/features/home/domain/repo/repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImpl(this.homeRemoteDataSource);

  @override
  Future<Either<ServerFailure, TopRatedModel>> getNowPlaying() async {
    try {
      final result = await homeRemoteDataSource.getNowPlaying();
      return right(result);
    } on Exception catch (e) {
      return left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
