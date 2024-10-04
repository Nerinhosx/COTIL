import 'package:flutter_application_prova_pratica_api/animal.dart';

class AnimalRepository{
  List<Animal> _listAn = [];

  AnimalRepository();

  get listAn => this._listAn;

  set listAn( value) => this._listAn = value;
}