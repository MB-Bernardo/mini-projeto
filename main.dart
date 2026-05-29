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
 
List<String> titulos =
    tarefas.map((tarefa) => tarefa.titulo).toList();

print('');
print('Titulos das tarefas:');

for (var titulo in titulos) {
  print(titulo);
}

bool todasTemTitulo =
    tarefas.every((tarefa) => tarefa.titulo != '');

print('');
print('Todas as tarefas possuem titulo? $todasTemTitulo');

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
  List<Tarefa> tarefasAndamento =
tarefas.where((tarefa){
  return tarefa.status == 'em andamento';
}).toList();

List<Tarefa> tarefasCanceladas =
tarefas.where((tarefa){
  return tarefa.status == 'cancelada';
}).toList();
 
 int horasAndamento = 0;

for (var tarefa in tarefasAndamento) {
  horasAndamento += tarefa.horas;
}

int horasPendentes = 0;

for (var tarefa in tarefasPendentes) {
  horasPendentes += tarefa.horas;
}

int horasCanceladas = 0;

for (var tarefa in tarefasCanceladas) {
  horasCanceladas += tarefa.horas;
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
print('Horas por status:');
print('concluida: $horasConcluidas horas');
print('em andamento: $horasAndamento horas');
print('pendente: $horasPendentes horas');
print('cancelada: $horasCanceladas horas');
   

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
    tarefa.responsavel == 'Não informado'
    
  ) {

    if (tarefa.titulo == '') {
      print('ID ${tarefa.id} - Sem título');
    } else {
      print('ID ${tarefa.id} - ${tarefa.titulo}');
    }

  }
}


  





}