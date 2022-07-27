
import 'package:dart_clean/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }

}