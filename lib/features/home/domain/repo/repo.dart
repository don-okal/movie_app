import 'package:dartz/dartz.dart';
import 'package:movie/core/errors/failure.dart';
import 'package:movie/features/home/data/model/now_playing_model.dart';

abstract class HomeRepo {
  Future<Either<ServerFailure, TopRatedModel>> getNowPlaying();
}
