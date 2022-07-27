import 'package:dart_clean/layers/domain/entities/carro_entity.dart';
import 'package:dart_clean/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import './salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {

  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }

}