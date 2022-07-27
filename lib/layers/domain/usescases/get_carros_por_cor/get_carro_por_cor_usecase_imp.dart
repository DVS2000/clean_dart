import 'package:dart_clean/layers/domain/repositories/get_carros_por_cor_repository.dart';

import '../../entities/carro_entity.dart';
import '../get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarroPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarroPorCorUseCaseImp(this._getCarrosPorCorRepository);
  
  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }

}