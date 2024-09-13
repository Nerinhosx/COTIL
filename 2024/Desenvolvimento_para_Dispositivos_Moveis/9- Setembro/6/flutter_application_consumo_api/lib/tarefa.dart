class Tarefa{
  int idUser = 0;
  int idTask = 0;
  String title = "";
  bool completed = false;

  //construtor sem parâmetro
  Tarefa();

  //construtor usando fromJson --> mapeia json para objeto
  Tarefa.fromJson(Map<String, dynamic> json):
    idUser = json['userId'],
    idTask = json['id'],
    title = json['title'],
    completed = json['completed']
  ;
}