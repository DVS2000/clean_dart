import 'package:dart_clean/layers/data/dto/carro_dto.dart';
import 'package:dart_clean/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:dart_clean/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';


class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // Chamamos a API e ela respondeu um Map
    var json = {
      "placa": "ABC123",
      "quantidadeDePortas": 2,
      "valorFinal": 1000.00
    };

    return CarroDto.fromMap(json);
  }

}
main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test('Devolva um carro independente da cor', () {

    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}