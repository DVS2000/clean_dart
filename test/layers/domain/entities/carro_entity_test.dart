import 'package:dart_clean/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placar: "ABC123", 
      qtdPortas: 4, 
      valor: 1000.00
    );
    expect(carroEntity, isNotNull);
  });

  test('Espero que a a quantidade porta seja 2', () {
    CarroEntity carroEntity = CarroEntity(
      placar: "ABC123", 
      qtdPortas: 2, 
      valor: 1000.00
    );
    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que a o valor real seja 2000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placar: "ABC123", 
      qtdPortas: 2, 
      valor: 1000.00
    );

    var resultEsperado = 2000.00;
    expect(carroEntity.valorReal, resultEsperado);
  });

  test('Espero que a o valor real seja 0.00', () {
    CarroEntity carroEntity = CarroEntity(
      placar: "ABC123", 
      qtdPortas: 0, 
      valor: 1000.00
    );

    var resultEsperado = 0.00;
    expect(carroEntity.valorReal, resultEsperado);
  });

  test('Espero que a o valor seja 30000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placar: "ABC123", 
      qtdPortas: 2, 
      valor: 15000.00
    );

    var resultEsperado = 30000.00;

    carroEntity.setLogica();

    expect(carroEntity.valor, resultEsperado);
  });
}