import 'package:dart_clean/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:dart_clean/layers/data/dto/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  // Chamamos a API e ela respondeu um Map
  var jsonVermelho = {
    "placa": "ABC123",
    "quantidadeDePortas": 4,
    "valorFinal": 5000.00
  };

  var jsonAny = {
    "placa": "QWE",
    "quantidadeDePortas": 2,
    "valorFinal": 2000.00
  };

  @override
  CarroDto call(String cor) {
    if(cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }

    return CarroDto.fromMap(jsonAny);
  }
}
