import 'package:dart_clean/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:dart_clean/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:dart_clean/layers/domain/entities/carro_entity.dart';
import 'package:dart_clean/layers/domain/usescases/get_carros_por_cor/get_carro_por_cor_usecase_imp.dart';
import 'package:dart_clean/layers/domain/usescases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instância de carro qunado passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp()
      )
    );

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uma um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp()
      )
    );

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });

  test('Deve retornar uma um carro de 2 portas quando qualquer cor exceto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarroPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDataSourceImp()
      )
    );

    var result = useCase('verde');

    expect(result.qtdPortas, 2);
  });
}