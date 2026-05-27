double tratarValores(dynamic valor) {
  if(valor == null) {
    return 0.00;
  }

  String valorTexto = valor.toString();

  valorTexto = valorTexto.replaceAll('R\$','');
  valorTexto = valorTexto.replaceAll(' ', '');
  valorTexto = valorTexto.replaceAll(',', '.');
  return double.tryParse(valorTexto) ?? 0.0;


}
 int tratarHoras(dynamic horas){
  if (horas == null){
    return 0;
  }
  return int.tryParse(horas.toString()) ?? 0;
 }
