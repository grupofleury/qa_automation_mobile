# language: pt

@busca_por_unidade
Funcionalidade: Busca por unidade
  Como um usuário da aplicação
  Daniela deseja ter acesso a buscar por unidades de atendimento
  Para encontrar uma unidade que encaixe em suas demandas

  Contexto:
    Dado que "Daniela" acessou a seção de unidades atráves da página principal

  @positivo
  Esquema do Cenário: Busca por unidade através da lista de unidades
    E ela busca pela unidade "<unidade>"
    Quando ela seleciona o card da unidade "<unidade>"
    Então o mesmo endereço apresentado no card selecionado deve ser apresentado na tela de detalhes da unidade
    Exemplos:
      | unidade  |
      |Alphaville|
      | Brasília |
      | Brasil I |
      |Campo Belo|
      | Anália Franco II |
      |Santo André II|
      |Vila Leopoldina|
      | Villa-Lobos |
      | Sumaré |
      
      