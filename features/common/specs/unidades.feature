# language: pt
Funcionalidade: Unidades

  @android
  Cenário: Validação do endereço da unidade de Brasília
    Dado que acesso o menu 'Unidades'
    Quando eu pesquiso pela sede de 'Brasília'
    Então confirmo o endereço 'Asa Sul, Brasília - DF - 70390-155'