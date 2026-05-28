import 'dados_tarefa.dart';
import 'models.dart';


void main(){
  List<Tarefa> tarefas = [];
  for (var item in dadosTarefas) {
    Tarefa tarefa = Tarefa.fromMap(item);

    tarefas.add(tarefa);
  }

  for (var tarefa in tarefas){
    tarefa.exibirResumo();
  }

  List<Tarefa> tarefasConcluidas = 
  tarefas.where((tarefa){
    return tarefa.status == 'concluida';
  }).toList();

  print('Tarefas concluidas:');

  for(var tarefa in tarefasConcluidas){
    tarefa.exibirResumo();
  }

  double somaValores = 0;
  for(var tarefa in tarefasConcluidas){
    somaValores += tarefa.valor;
  }
  print('Valor total das tarefas concluidas:');
  print('R\$ $somaValores');

  List<Tarefa> tarefasPendentes = 
  tarefas.where((tarefa){
    return tarefa.status == 'pendente';
  }).toList();
  double somaPendente = 0;
  for(var tarefa in tarefasPendentes){
    somaPendente += tarefa.valor;
    }

  double media = somaPendente / tarefasPendentes.length;
  print('');
  print('Media das tarefas pendentes:');
  print(media);

  Set<String> statusUnicos = {};
   for (var tarefa in tarefas) {
    statusUnicos.add(tarefa.status);

  }

  print('');
  print('Status unicos:');
  print(statusUnicos);





}