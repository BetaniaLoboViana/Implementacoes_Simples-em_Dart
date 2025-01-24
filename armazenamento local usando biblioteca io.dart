import 'dart:io';

void main() async {
  // Caminho do arquivo para armazenamento
  var file = File('data.txt');

  // Armazenar um valor inteiro no arquivo
  await file.writeAsString('10');
  print('Valor armazenado com sucesso.');

  // Ler o valor armazenado
  if (await file.exists()) {
    String contents = await file.readAsString();
    int myInt = int.parse(contents);
    print('Valor recuperado: $myInt');
  } else {
    print('Arquivo não encontrado.');
  }
}
