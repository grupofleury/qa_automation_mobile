#language: pt
Funcionalidade: Detalhes das Unidades de Atendimento
	Eu como usuário
	Quero visualizar os detalhes das unidades de Atendimento
	Para avaliar a unidade que atenda melhor minhas necessidades

	Contexto:
		Dado que estou na tela inicial do aplicativo

	Cenário: Visualizar Endereço nos Detalhes da Unidade
		Dado que estou na seção de Unidades
		Quando seleciono a unidade "Brasília"
		Então visualizo o endereço na tela de detalhes da unidade