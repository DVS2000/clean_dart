import 'package:dart_clean/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:dart_clean/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:dart_clean/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:dart_clean/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:dart_clean/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dart_clean/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:dart_clean/layers/domain/usescases/get_carros_por_cor/get_carro_por_cor_usecase_imp.dart';
import 'package:dart_clean/layers/domain/usescases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:dart_clean/layers/domain/usescases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:dart_clean/layers/domain/usescases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:dart_clean/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(() => GetCarrosPorCorLocalDataSourceImp());

    // Repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(() => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(() => SalvarCarroFavoritoRepositoryImp());

    // Usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(() => GetCarroPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(() => SalvarCarroFavoritoUseCaseImp(getIt()));

    // Controllers
    getIt.registerFactory<CarroController>(() => CarroController(getIt(), getIt()));
  
  }
}