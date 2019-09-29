# language: pt
Funcionalidade: Unidades

  @android
  Cenário: Autenticacao com PDV e ID de vendedor validos
    Dado que acesso o menu 'Unidades'
    Quando eu pesquiso pela sede de 'Brasília'
    Então confirmo o endereço 'Asa Sul, Brasília - DF - 70390-155'