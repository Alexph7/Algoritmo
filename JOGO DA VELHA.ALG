Algoritmo "Jogo da Velha"
//
//
// Descrição   : Jogo da velha tradicional.
// Autor(a)    : Alex Rodrigues
// Data atual  : 07/12/2020
Var
   jogo:vetor [1..3,1..3] de caractere
   res,vez,a,i,j,c,l,cont:inteiro
   x,n1,n2,ganhador:caractere
   vencedor:logico

   //-================================================================

procedimento preencherVetor()
inicio
   cont<-1
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         jogo[i,j]<-numpcarac(cont)
         cont<-cont+1
      fimpara
   fimpara
fimprocedimento

//====================================================================

procedimento velha()
inicio
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         se(j=1)entao
            escreva("   ":10,jogo[i,j]:2)
         senao
            escreva(" |  ",jogo[i,j]:2)
         fimse
      fimpara
      escreval
      se(i<>3)entao
         escreval("        -----+-----+-----")
      fimse
   fimpara
fimprocedimento

//=============================================================

procedimento jogar()
inicio
   vez<-1
   vencedor<-falso
   x<-"X"
   limpatela
   escreval("Digite o Nome Do Jogador 'X'")
   leia(n1)
   escreval("Digite o Nome Do Jogador 'O'")
   leia(n2)
   limpatela
   velha()
   repita
      se(x="X")entao
         escreval(n1," Digite um Número Para Marcar ",x)
         ganhador<-n1
      senao
         escreval(n2," Digite um Número Para Marcar ",x)
         ganhador<-n2
      fimse
      leia(res)
      se((res>0)e(res<10))entao
         se(res>0)e(res<4)entao
            l<-1
            se(jogo[l,res]=x)entao
               escreval("Número Já Preenchido")
               escreval("Digite Enter Para Escolher outro.")
               leia(a)
            senao
               jogo[l,res]<-x
            fimse
            vez<-vez+1
            vencedor <- verVencedor()
         senao
            se((res>3)e(res<7))entao
               l<-2
               se(jogo[l,res-3]=x)entao
                  escreval("Número Já Preenchido")
                  escreval("Digite Enter Para Escolher outro.")
                  leia(a)
               senao
                  jogo[l,res-3]<-x
               fimse
               vez<-vez+1
               vencedor <- verVencedor()
            senao
               l<-3
               se(jogo[l,res-6]=x)entao
                  escreval("Número Já Preenchido")
                  escreval("Digite Enter Para Escolher outro.")
                  leia(a)
               senao
                  jogo[l,res-6]<-x
               fimse
               vez<-vez+1
               vencedor <- verVencedor()
            fimse
         fimse
      senao
         escreva("Número Inválido, Tente Entre 1-10")
         leia(a)           //para que a mensagem acima não desapareça com o comando "LipaTela"
      fimse
      se(vencedor=falso)entao //alternar jogadores
         se(vez%2=0)entao
            x<-"O"
         senao
            x<-"X"
         fimse
      fimse
      limpatela
      velha()
   ate(vencedor=verdadeiro)ou(vez=10)
   se(vencedor=verdadeiro)entao
      escreval
      escreval("    ***   ",ganhador," Venceu Parabééénss!!!   ***")
   senao
      se(vez=10)entao
         escreval
         escreval("    ***Neste jogo Deu Velha!***")
      fimse
   fimse
fimprocedimento

//==================================================================

funcao verVencedor():logico
inicio
   para l de 1 ate 3 faca
      para c de 1 ate 3 faca
         se((jogo[l,1]=jogo[l,2])e(jogo[l,2]=jogo[l,3]))entao
            vencedor<-verdadeiro
         senao
            se((jogo[1,c]=jogo[2,c])e(jogo[2,c]=jogo[3,c]))entao
               vencedor<-verdadeiro
            fimse
         fimse
      fimpara
   fimpara
   se((jogo[1,1]=jogo[2,2])e(jogo[2,2]=jogo[3,3]))entao
      vencedor<-verdadeiro
   fimse
   se((jogo[1,3]=jogo[2,2])e(jogo[2,2]=jogo[3,1]))entao
      vencedor<-verdadeiro
   fimse
   retorne vencedor
fimfuncao

//===================================================================

Inicio
   preencherVetor()
   jogar()
Fimalgoritmo