// arquivo de testes do exercício 1.1 - Comandos de entrada e saída
// limpar a tela e variáveis
clc(); clear();
// criar o matriz de entrada
INPUT = [2,4,3,2;6,6,6,6;2,2,2,2];
// criar a vetor de saída
OUTPUT = [8,21,5];
// imprimir início de testes
mprintf("--------------------\n");
// criar um loop para vários testes
for i = 1:size(INPUT,1)
   // acessar a variável T1, T2, T3, T4
   T1 = INPUT(i,1); T2 = INPUT(i, 2); T3 = INPUT(i, 3); T4 = INPUT(i, 4);
   // salvar o valor da variável em arquivo
   save("input.dat", "T1", "T2", "T3", "T4");
   // imprimir os valores de teste
   mprintf("Teste para T1=%i, T2=%i, T3=%i, T4=%i\n", T1, T2, T3, T4);
   // executar o arquivo de programação
   exec("main.sce");
   // carregar o arquivo de saída
   load("output.dat", "N");
   // checar o resultado
   assert_checkequal ( N , OUTPUT(i) );
end
// imprimir fim de testes
mprintf("--------------------\n");
