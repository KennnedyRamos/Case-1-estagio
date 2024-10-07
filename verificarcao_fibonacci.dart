import 'dart:io';

// Função para calcular se um número pertence à sequência de Fibonacci
bool isFibonacci(int num) {
  int a = 0;
  int b = 1;
  if (num == 0 || num == 1) return true;

  int fibonacci = a + b;
  while (fibonacci <= num) {
    if (fibonacci == num) return true;
    a = b;
    b = fibonacci;
    fibonacci = a + b;
  }
  return false;
}

void main() {
  stdout.write('Informe um número: ');
  int num = int.parse(stdin.readLineSync()!);

  if (isFibonacci(num)) {
    print('O número $num pertence à sequência de Fibonacci.');
  } else {
    print('O número $num não pertence à sequência de Fibonacci.');
  }
}
