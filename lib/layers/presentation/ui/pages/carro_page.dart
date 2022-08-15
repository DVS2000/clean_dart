import 'package:dart_clean/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// ignore: must_be_immutable
class CarroPage extends StatelessWidget {
  CarroPage({ Key? key }) : super(key: key);

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(
          controller.carro.placar
        ),
      ),
    );
  }
}