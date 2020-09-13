# language: pt

Funcionalidade: Listar Unidades

  Como um usuário
  Desejo listar as unidades da Fleury
  Para visualizar seus detalhes

  Cenário: Ver endereço da unidade Brasília
    Dado que clico no card Unidades
    Quando eu selecionar a unidade "Brasília"
    Então devo visualizar o endereço "SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155"
