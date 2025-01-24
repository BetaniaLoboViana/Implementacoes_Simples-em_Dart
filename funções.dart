void main() {
  print('Olá Mundo');
}

void saudacao(String nome) {
  print('Olá, $nome!');
  saudacao('Bety');
}

int soma(int a, int b) {
  return a + b;
  int resultado = soma(5, 3);
}

void executaFuncao(Function funcao) {
  funcao();
}

void dizOla() {
  print('Olá!!');
}

void maine() {
  executaFuncao(dizOla);
}
