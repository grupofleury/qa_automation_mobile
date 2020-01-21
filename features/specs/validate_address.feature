#language: pt

Funcionalidade: Validar o endereço através do apk Fleury
  EU COMO usuário do apk
  GOSTARIA de validar o endereço da unidade
  PARA verificar as informações apresentadas

  Cenário: Validar o endereço da unidade no Distrito Federal
    Dado que o usuário acesse o menu Points of care
    Quando selecionar a unidade de Brasília
    Então o sistema deverá apresentar o endereço
    """
    SEPS 715/915, Conjunto A, Bloco E, null Asa Sul, Brasília - DF - 70390-155
    """
    