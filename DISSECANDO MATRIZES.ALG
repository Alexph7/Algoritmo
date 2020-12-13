Algoritmo "Dissecando Matrizes"
//
//
// Descrição   : Exercício proposto
// Autor(a)    : Alex Rodrigues
// Data atual  : 09/12/2020

Var
   matriz:vetor[1..4,1..4]de inteiro
   i,j,res,soma:inteiro

procedimento preenchMatriz()
inicio
   aleatorio 1,9
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         leia(matriz[i,j])
      fimpara
      escreval
   fimpara
   aleatorio off
fimprocedimento
//===================================================================

procedimento mostraMatriz()
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(j=1)entao
            escreval()
            escreva(" ":10,matriz[i,j])
         senao
            escreva(matriz[i,j]:6)
         fimse
      fimpara
      escreval()
   fimpara
fimprocedimento

//===================================================================

procedimento mostraDiagPrinc()
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(i=j)entao
            escreva(" ":10,Matriz[i,j])
            escreval()
         senao
            escreva("":5)
         fimse
      fimpara
      escreval()
   fimpara
fimprocedimento

//====================================================================
procedimento mostraTriSup()
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se((i>j)ou(i=j))entao
            escreva(" ":7)
         senao
            escreva(Matriz[i,j]:7)
         fimse
      fimpara
      escreval()
      escreval()
   fimpara

fimprocedimento

//====================================================================
procedimento TrianInf()
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se((i<j)ou(i=j))entao
            escreva(" ":7)
         senao
            escreva(matriz[i,j]:7)
         fimse
      fimpara
      escreval()
      escreval()
   fimpara


fimprocedimento

//====================================================================
procedimento SomaMat()
inicio
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         soma<-soma+matriz[i,j]
      fimpara
   fimpara
   mostraMatriz
   escreval()
   escreval("         A Soma Da Matriz é =",soma)
fimprocedimento

//====================================================================
procedimento ParMat()
var
   par,cc,cd:inteiro
   vetpar:vetor[1..16]de inteiro
inicio
   mostraMatriz()
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(matriz[i,j]%2=0)entao
            par<-par+1
             cc<-cc+1
             vetpar[cc]<-matriz[i,j]
         fimse
      fimpara
   fimpara
   escreval()
   escreva(" A Matriz Contém",par," Números Pares São Estes:")
   para i de 1 ate 16 faca
      se(vetpar[i]<>0)entao
         escreva(vetpar[i])
      fimse
   fimpara
   escreval()
fimprocedimento

//====================================================================
procedimento MultMat()
var
   mult:inteiro
inicio
   mostraMatriz()
   mult<-1
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         mult<-mult*matriz[i,j]
      fimpara
   fimpara
   escreval()
   escreval("A Multiplicação Da Matriz é =",mult)
fimprocedimento

//====================================================================
procedimento SomDiaPrin()
var
   diag:inteiro
inicio
   mostraDiagPrinc()
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(i=j)entao
            diag<-diag+matriz[i,j]
         fimse
      fimpara
   fimpara
   escreval
   escreval("         A Soma da Diagonal Principal é =",diag)

fimprocedimento

//====================================================================
procedimento MultDiaPrin()
var
   mult:inteiro
inicio
   mult<-1
   mostraDiagPrinc()
   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se(i=j)entao
            mult<-mult*matriz[i,j]
         fimse
      fimpara
   fimpara
   escreval("      A Multiplicação da Diagonal Principal é =",mult)
fimprocedimento

//====================================================================
Inicio
   escreval("               Oque Deseja Fazer ? ")
   escreval()
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
   preenchMatriz()
   limpatela
   escolha res
   caso 1
      mostraMatriz()
   caso 2
      mostraDiagPrinc()
   caso 3
      mostraTriSup()
   caso 4
      TrianInf()
   caso 5
      SomaMat()
   caso 6
      ParMat()
   caso 7
      MultMat()
   caso 8
      SomDiaPrin()
   caso 9
      MultDiaPrin()
   caso 10
      SomTriSup()
   caso 11
      MultTriSup()
   caso 12
      SomTriangInf()
   caso 13
      MultTrianInf()
   caso 14
      SomTrians()
   caso 15
      escreval("Até Mais...")
   outrocaso
      escreval("ERRO!! Digite um Número Válido.")
   fimescolha

Fimalgoritmo