import 'package:dart_clean/core/inject/inject.dart';
import 'package:dart_clean/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {

  Inject.init();
  
  runApp(
    MaterialApp(
      home: CarroPage(),
    )
  );
}