Algoritmo "Dissecando Matrizes"
//
//
// Descrição   : Exercício proposto
// Autor(a)    : Alex Rodrigues
// Data atual  : 09/12/2020

Var
   matriz:vetor[1..4,1..4]de inteiro
   i,j,res:inteiro

procedimento mostraMatriz()
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
//==================================================================

Inicio
   escreval(" Oque Deseja Fazer? ")
   escreval(" [1] Mostrar a Matriz")
   escreval(" [2] Mostrar a Diagonal Principal")
   escreval(" [3] Mostrar o Triângulo Superior")
   escreval(" [4] Mostrar o Triângulo Inferior")
   escreval(" [5] Mostrar a Soma da Matriz")
   escreval(" [6] Mostrar os Números Pares da Matriz")
   escreval(" [7] Mostrar a Multiplicação da Matriz")
   escreval(" [8] Mostrar a Soma da Diagonal Principal")
   escreval(" [9] Mostrar a Multiplicação da Diagonal Principal")
   escreval("[10] Mostrar a soma do Triângulo Superior")
   escreval("[11] Mostrar a multiplicação do Triângulo Superior")
   escreval("[12] Mostrar a soma do Triângulo Inferior")
   escreval("[13] Mostrar a Multiplicação do Triângulo Inferior")
   escreval("[14] Mostrar a Soma dos Triângulos")
   escreval("[15] Sair")
   leia(res)
   escolha res
   caso 1
      mostraMatriz()
   caso 2
      mostraDiagPrinc()
   caso 3
      mostratriSup()
   caso 4
      mostraTriInf()
   caso 5
      mostraSomaMat()
   caso 6
      mostParMat()
   caso 7
      mostMultMat()
   caso 8
      mostSomDiaPrin()
   caso 9
      mostMultDiaPrin()
   caso 10
      mostSomTriSup()
   caso 11
      mostMultTriSup()
   caso 12
      mostSomTriangInf()
   caso 13
      mostMultTrianInf()
   caso 14
      mostSomTrians()
   caso 15
      escreval("Até Mais...")
   outrocaso
      escreval("ERRO!! Digite um Número Válido.")
   fimescolha

Fimalgoritmo