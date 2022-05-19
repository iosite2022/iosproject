import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/carreras_models.dart';

class CarreraProvider extends ChangeNotifier {
  Carreras carreraSeleccionada;
  CarreraProvider(this.carreraSeleccionada);
}
