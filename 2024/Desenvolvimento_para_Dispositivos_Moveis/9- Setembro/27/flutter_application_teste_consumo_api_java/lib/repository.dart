import 'package:flutter_application_teste_consumo_api_java/aluno.dart';

class AlunoFlutterRepository{
  List<AlunoFlutter> _listAlFl = [];


  AlunoFlutterRepository();

  List<AlunoFlutter> get listAlFl => this._listAlFl;

  set listAlFl(List<AlunoFlutter> value) => this._listAlFl = value;
}