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

 
  

  double somaValores = 0;
  for(var tarefa in tarefasConcluidas){
    somaValores += tarefa.valor;
  }
  

  List<Tarefa> tarefasPendentes = 
  tarefas.where((tarefa){
    return tarefa.status == 'pendente';
  }).toList();
  double somaPendente = 0;
  for(var tarefa in tarefasPendentes){
    somaPendente += tarefa.valor;
    }

  double media = somaPendente / tarefasPendentes.length;
  
  Set<String> statusUnicos = {};
   for (var tarefa in tarefas) {
    statusUnicos.add(tarefa.status);

  }

  

  int horasConcluidas = 0;
  for (var tarefa in tarefasConcluidas){
    horasConcluidas += tarefa.horas;

  }
   


  

   int totalConcluidas = 0;

for (var tarefa in tarefas) {
  if (tarefa.status == 'concluida') {
    totalConcluidas++;
  }
}

int totalPendentes = 0;

for (var tarefa in tarefas) {
  if (tarefa.status == 'pendente') {
    totalPendentes++;
  }
}
int totalAndamento = 0;

for (var tarefa in tarefas) {
  if (tarefa.status == 'em andamento') {
    totalAndamento++;
  }
}
int totalCanceladas = 0;

for (var tarefa in tarefas) {
  if (tarefa.status == 'cancelada') {
    totalCanceladas++;
  }
}


print('');
print('RELATORIO FINAL DE TAREFAS');

print('');
print('Total de tarefas analisadas: 7');
print('Tarefas concluidas: $totalConcluidas');
print('Tarefas pendentes: $totalPendentes');
print('Tarefas em andamento: $totalAndamento');
print('Tarefas canceladas: $totalCanceladas');

print('');
print('Valor total das concluidas: R\$ $somaValores');
print('Media de valor das pendentes: R\$ $media');
print('Total de horas concluidas: $horasConcluidas');

print('');
print('Status encontrados:');

for (var status in statusUnicos) {
  print(status);
}
print('');
print('Tarefas com dados incompletos:');

for (var tarefa in tarefas) {

  if (
    tarefa.titulo == '' ||
    tarefa.responsavel == 'Não informado' ||
    tarefa.valor == 0
  ) {

    if (tarefa.titulo == '') {
      print('ID ${tarefa.id} - Sem título');
    } else {
      print('ID ${tarefa.id} - ${tarefa.titulo}');
    }

  }
}


  





}