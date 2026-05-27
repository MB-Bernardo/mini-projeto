 import 'funcoes.dart';


class ItemTrabalho {
  int id;
  String titulo;



  ItemTrabalho({
    required this.id,
    required this.titulo,
  });

  void exibirResumo() {
    print('Item $id - $titulo');
  }
}

class Tarefa extends ItemTrabalho {


  String responsavel;
  String status;
  String prioridade;
  double valor;
  int horas;

  Tarefa({
    required int id,
    required String titulo,
    required this.responsavel,
    required this.status,
    required this.prioridade,
    required this.valor,
    required this.horas,
  }) : super(
         id: id,
        titulo: titulo,
    );

    factory Tarefa.fromMap(Map<String, dynamic> item) {
    return Tarefa(
      id: item['id'] ?? 0,
      titulo: item['titulo'] ?? 'Sem titulo',
      responsavel: item['responsavel'] ?? 'Não informado',
      status: item['status'] ?? 'Sem status',
      prioridade: item['prioridade'] ?? 'Sem prioridade',


      valor: tratarValores(item['valor']),
      horas: tratarHoras(item['horas']),
    );



  }

    

    

  @override
  void exibirResumo(){
    print('Tarefa $id - $titulo | Status : $status | Valor: R\$ $valor',);
  }
  

 
}