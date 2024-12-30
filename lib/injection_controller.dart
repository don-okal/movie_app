import 'package:get_it/get_it.dart';
import 'core/services/api_service.dart';
import 'features/home/data/remote/remote_data_source.dart';
import 'features/home/data/repo_impl/repo_impl.dart';
import 'features/home/domain/repo/repo.dart';
import 'features/home/domain/use_case/use_case.dart';

class InjectionController {
  final getIt = GetIt.instance;
  initialize() async {
    getIt.registerLazySingleton<ApiService>(
      () => ApiService(),
    );
    getIt.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(
        getIt(),
      ),
    );

    getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(getIt()),
    );

    getIt.registerLazySingleton<HomeUseCase>(
      () => HomeUseCase(
        getIt(),
      ),
    );
  }
}
