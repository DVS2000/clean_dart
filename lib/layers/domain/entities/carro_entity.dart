class CarroEntity {
  
  String placar;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placar,
    required this.qtdPortas,
    required this.valor
  });

  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if(valor > 10000.00) {
      valor *= 2;
    }
  }
}