Algoritmo "Tatour"
// Disciplina   : [Introdu��o ao Mundo da Computa��o e L�gica de Programa��o]
// Professor   : Denis Cople
// Descri��o   : Cadastro e consulta de clientes e destinos
// Autor(a)    : Otavio A. S. Espindola

Var

 clientes, destinos: vetor [1..5] de caractere
 busca: caractere
 opcao, i: inteiro
 achou: logico
 

Inicio

procedimento cadastrarClientes
inicio
      escreval("Cadastre 5 clientes ")
	   para i de 1 ate 5 passo 1 faca
            limpatela
				escreval("Cadastre o cliente nr ", i)
		  		leia(clientes[i])
		  		escreval("")
      fimpara
fimprocedimento

procedimento cadastrarDestinos
inicio
      escreval("Cadastre 5 destinos ")
	   para i de 1 ate 5 passo 1 faca
            limpatela
				escreval("Cadastre o destino nr ", i)
		  		leia(destinos[i])
		  		escreval("")
      fimpara
fimprocedimento

procedimento pesquisarCLiente
inicio
      limpatela
      achou <- falso
      escreval("Qual cliente deseja pesquisar? ")
      leia(busca)
      para i de 1 ate 5 passo 1 faca
           se busca = clientes[i] entao
                      achou <- verdadeiro
           fimse
      fimpara
      
      se achou = verdadeiro entao
           escreval("O cliente ", busca, " foi encontrado")
           escreval("")
      senao
           escreval("O cliente ", busca, " n�o se encontra em nossos cadastros")
           escreval("")
      fimse
fimprocedimento

procedimento pesquisarDestino
inicio
      limpatela
      achou <- falso
      escreval("Qual destino deseja pesquisar? ")
      leia(busca)
      para i de 1 ate 5 passo 1 faca
           se busca = destinos[i] entao
                      achou <- verdadeiro
           fimse
      fimpara

      se achou = verdadeiro entao
           escreval("O destino ", busca, " foi encontrado")
           escreval("")
      senao
           escreval("Infelizmente n�o viajamos para ", busca)
           escreval("")
      fimse
fimprocedimento



repita
      escreval("O que voc� deseja fazer?")
		escreval("1 - Cadastrar Clientes")
		escreval("2 - Cadastrar Destinos")
		escreval("3 - Pesquisar Cliente")
		escreval("4 - Pesquisar Destino")
		escreval("0 - Sair")
      leia(opcao)
      escolha opcao
              caso 1
                   cadastrarClientes
              caso 2
                   cadastrarDestinos
              caso 3
                   pesquisarCliente
              caso 4
                   pesquisarDestino
              caso 0
                   escreval("Encerrando programa")
              outrocaso
                   escreval("Digite uma op��o valida")
      fimescolha
ate opcao = 0

Fimalgoritmo

