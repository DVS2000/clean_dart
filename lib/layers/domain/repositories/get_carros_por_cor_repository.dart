import 'package:dart_clean/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  CarroEntity call(String cor);
}