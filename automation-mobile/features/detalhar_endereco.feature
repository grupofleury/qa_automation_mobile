# language: pt

#Descrição do cenário de testes utilizando cucumber que utiliza
# a notação gherkin

Funcionalidade: Detalhar Endereço

Sendo um usuário do site Fleury
Desejo detalhar a unidade de Brasília no site da Fleury
Para que eu consigar visualizar o endereço

Esquema do Cenário: Detalhar e verificar a Unidade de Brasília
    Dado que eu acesso a opcao Unidades
    Quando eu seleciono a Unidade de Brasília
    Então valido o <endereco> apresentado

    Exemplos:
      | endereco                                                                  |
      | 'SEPS 715/915, Conjunto A, Bloco E, \nAsa Sul, Brasília - DF - 70390-155' |
