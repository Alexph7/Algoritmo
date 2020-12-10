Algoritmo "Dissecando Matrizes"
//
//
// Descrição   : Exercício proposto
// Autor(a)    : Alex Rodrigues
// Data atual  : 09/12/2020

Var
   matriz:vetor[1..4,1..4]de inteiro
   i,j,res:inteiro

procedimento mostrarMatriz()
inicio
   aleatorio 1,9
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         leia(matriz[i,j])
      fimpara
      escreval
   fimpara
   limpatela
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(j=1)entao
            escreval
            escreva(" ":13,matriz[i,j])
         senao
            escreva(matriz[i,j]:6)
         fimse
      fimpara
      escreval
   fimpara
fimprocedimento

Inicio
   escreval("Oque Deseja Fazer? ")
   escreval("[1] Mostrar Matriz")
   escreval("[2] Mostrar Diagonal Principal")
   escreval("[3] Mostrar Triângulo Superior")
   escreval("[4] Mostrar Triângulo Inferior")
   escreval("[5] Mostrar a Soma da Matriz")
   escreval("[6] Mostrar os Numeros Pares da Matriz")
   escreval("[7] Mostrar a Multiplicação da Matriz")
   escreval("[8] Mostrar a Soma da Diagonal Principal")
   escreval("[9] Mostrar a Multiplicação da Diagonal Principal")
   escreval("[10] Mostrar a soma do Triangulo Superior")
   escreval("[11] Mostrar a multiplicação do Triângulo Superior")
   escreval("[12] Mostrar a soma do Triângulo Inferior")
   escreval("[13] Mostrar a Multiplicação do Triângulo Inferior")
   escreval("[14] Mostrar a Soma dos Triangulos")
   escreval("[15] Sair")
   leia(res)


Fimalgoritmo