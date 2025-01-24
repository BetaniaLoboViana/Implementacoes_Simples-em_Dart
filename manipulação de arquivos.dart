import 'dart:io'; // import deve ser feito fora do main

void main() async {
  // Diretório definido
  var directory = r'caminho da pasta do seu arquivo dart';

  //usando a variável directory
  var file = File('$directory\\test.txt');
  var contents;

  // Mensagem para garantir que o arquivo será salvo no local correto
  print('O arquivo será salvo em: $directory');

  // Escrevendo no arquivo
  await file.writeAsString('Salvando no diretório especificado.');

  // Verifica se o arquivo existe
  if (await file.exists()) {
    contents = await file.readAsString();
    print(contents);
  }

  // Escrevendo no arquivo
  await file.writeAsString('hello Dart');
  await file.writeAsString('hello Dart Again!!!', mode: FileMode.append);
}
