
Algoritmo "Sorteio aleatorio"
//
//
//Descrição   : Gera Quantidades De Numeros Aleatórios e Além Disso
//              Conta Quais Numeros Foram Repetidos e Quantas Vezes Ocorreu
// Autor(a)    : Alex Rodrigues
// Data atual  : 15/11/2020
Var
   ale:vetor[1..300] de inteiro
   h:vetor [1..300] de inteiro
   ax:vetor [1..300] de inteiro
   au:vetor [1..300] de inteiro
   zero:vetor[1..300]de inteiro
   i,j,aux,auxd,x,y,auxf,cont:inteiro

   //-------------------------------------------------------------------
procedimento preenchimentoVetor()
inicio
   aleatorio 1,x
   para i de 1 ate x faca
      leia(ale[i])
   fimpara
   aleatorio off
fimprocedimento
//------------------------------------------------------------------
procedimento copiarVetor()
inicio
   para i de 1 ate x faca   //Vai Copiar vetor "ale" para vetor "h" para ser comparado depois.
      h[i]<-ale[i]
   fimpara
fimprocedimento
//------------------------------------------------------------------
procedimento numerosRepetidos()
inicio
   para i de 1 ate y faca   //Vai Preencher Um Vetor Especifico Só Para Numeros Que Se Repetiram.
      para j de i+1 ate x faca
         se(ale[i]=h[j])entao
            ax[j]<-ale[i]
         fimse
      fimpara
   fimpara
fimprocedimento
//----------------------------------------------------------------------
procedimento numerosOcorrencia()
inicio
   para i de 1 ate y faca   //preenche Vetor dizendo quantidades de ocorrencias de um mesmo numero.
      para j de i+1 ate x faca
         se(ale[i]=ale[j])e(ale[i]<>ax[i])entao
            au[i]<-au[i]+1
         fimse
      fimpara
   fimpara
fimprocedimento
//----------------------------------------------------------------------
procedimento ocorrenciaAleatoria()
inicio
   escreval()
   escreval("--------------------------")
   escreval("NUMEROS DE OCORRÊNCIAS (Aleatórias)")
   escreval()
   para i de 1 ate x faca  //repetição para mostrar o numero e a qtd de vezes que ele ocorreu sem ordem por enquanto.
      se (au[i]<>0) entao
         escreval("":1,ale[i]:2," {",au[i]+1," }")   // numero de casos repetidos + 1 que é a propria ocorrencia do numero em si.
      senao
         se(au[i]=0)e(ax[i]=0)entao   //se ele for igual a zero, Então Ele ocorreu no minímo uma vez mas não repetiu, e se for igual no vetor "ax" entao ele não é igual ao numero jaa repetido.
            escreval("":1,ale[i]:2," {",au[i]+1," }")
         fimse
      fimse
   fimpara
fimprocedimento

//--------------------------------------------------------------------
procedimento ordenador()
inicio
   para i de 1 ate y faca
      para j de i+1 ate x faca   //ordena os vetores
         se(au[i]<au[j])entao
            aux<-au[i]
            auxf<-ax[i]
            auxd<-ale[i]
            au[i]<-au[j]
            ale[i]<-ale[j]
            ax[i]<-au[j]
            au[j]<-aux
            ale[j]<-auxd
            ax[j]<-auxf
         fimse
      fimpara
   fimpara
fimprocedimento
//-----------------------------------------------------------------
procedimento ordemDecrescente()
inicio
   escreval()
   escreval("------------------------")
   escreval("ORDEM DECRESCENTE")
   para i de 1 ate x faca   //Repetição Para Colocar Os Numeros Que Ocorreram Mais primeiros ate os Numeros que ocorreram menos.
      se(au[i]<>0)entao
         escreval("O Nº: ",ale[i],"  Ocorreu ",au[i]+1,"  Vezes.")   //Seria zero mas é acrescentado +1 pra somar a Própria Ocorrência do Número em Si.
      fimse
      se(au[i]=0)e(ax[i]=0)entao
         escreval("O Nº: ",ale[i]:2,"  Ocorreu ",au[i]+1:4,"  Vezes.")
      fimse
   fimpara

fimprocedimento
//--------------------------------------------------------------------
procedimento verificarQuemNaoSaiu() //ver quais numeros nao ocorreram nenhuma vez
inicio
   para i de 1 ate x faca
      zero[i]<-i //preenche todo vetor de 1,2,3,4... ate x
   fimpara
   
   para i de 1 ate x faca
   cont<-0   //reseta contador
      para j de 1 ate x faca
         se(zero[i]<>ale[j])entao
            cont<-cont+1      //se atingir x vezes de diferença entao nao tem nenhuma igualdade, entao ocorreu zero vezes
         fimse
      fimpara
      se(cont=x)entao
         escreval("O Nº: ",zero[i]:2,"  Ocorreu 0 Vezes.")
      fimse
   fimpara
fimprocedimento
//--------------------------------------------------------------------
Inicio
   y<-299   //numero de vezes que o contador "j" vai rodar.
   x<-300  //Número De Vezes Que o Contador "i" vai Rodar.
   //para mudar quantidades de numeros altere 'x' e o 'y'
   //com 1 a menos

   preenchimentoVetor()
   copiarVetor()
   numerosRepetidos()
   numerosOcorrencia()
   //ocorrenciaAleatoria() // //apenas mostra numeros ocorridos sem ordem.
   ordenador()
   ordemDecrescente() //mostra numeros ocorridos ordenado em Decrescente.
   verificarQuemNaoSaiu()


Fimalgoritmo