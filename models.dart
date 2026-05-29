 import 'funcoes.dart';


class ItemTrabalho {
  final int id;
  final String titulo;



  ItemTrabalho({
    required this.id,
    required this.titulo,
  });

  void exibirResumo() {
    print('Item $id - $titulo');
  }
}

class Tarefa extends ItemTrabalho {


  final String responsavel;
  final String _status;
  final String prioridade;
  final double _valor;
  final int horas;

  Tarefa({
    required int id,
    required String titulo,
    required this.responsavel,
    required String status,
    required this.prioridade,
    required double valor,
    required this.horas,
  }) : _status = status,
       _valor = valor,
  
        super(
         id: id,
        titulo: titulo,
    );
     String get status => _status;
     double get valor => _valor;

    factory Tarefa.fromMap(Map<String, dynamic> item) {
    return Tarefa(
      id: item['id'] ?? 0,
      titulo: (item['titulo'] ?? '').trim(),
      responsavel: (item['responsavel'] ?? 'Não informado').trim(),
      status: (item['status'] ?? 'Sem status').trim(),
      prioridade: (item['prioridade'] ?? 'Sem prioridade').trim(),


      valor: tratarValores(item['valor']),
      horas: tratarHoras(item['horas']),
    );



  }

    

    

  @override
  void exibirResumo(){
    print('Tarefa $id - $titulo | Status : $status | Valor: R\$ $valor',);
  }
  

 
}