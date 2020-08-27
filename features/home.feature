#language: pt
Funcionalidade: Unidades de atendimento

  Esquema do Cenario: Validar que o endereço para <unidade> está correto
    Dado que eu abra o app
    Quando eu clico em Unidades
    E nego a localização
    E clico em "<unidade>"
    Então o endereço é "<endereco>"
    Exemplos:
    | unidade  | endereco |
    | Brasília | SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155 |