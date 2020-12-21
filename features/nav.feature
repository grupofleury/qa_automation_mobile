#language: pt
#utf-8

Funcionalidade: Detalhes da unidade

    Esquema do Cenario: Visualisar enderecos da unidade

        Dado que estou na tela principal do app
        Quando acesso a opcao Unidades
        E procuro pela unidade <Unidade>
        Entao visualiso o endereco da unidade

    Exemplos:
    |Unidade          |
    |"Brasília"       |
    |"Vila Leopoldina"|
