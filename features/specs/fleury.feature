# language: pt

Funcionalidade: Validar o endereço de uma unidade no app

- Encontrar um endereço a partir da seleção deste no app

Cenário: FleuryTest

Dado que estou na página inicial
Quando clico na opção unidades
E seleciono a 'Unidade'
Então verifico se o 'Endereço' esta correto

  | Unidade    |                          Endereço                                         |                       
  | Brasília   |  SEPS 715/915, Conjunto A, Bloco E,  Asa Sul, Brasília - DF - 70390-155   |