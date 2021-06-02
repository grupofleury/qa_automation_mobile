# language: pt
# encode: UTF-8

@valida_enderecos
Funcionalidade: Validar Endereco
  Eu como analista de qualidade
  Preciso ter certeza que o endereco da unidade esteja correto
  
  @endereco_brasilia  
  Cenário: Validar endereco da unidade de brasilia
    Dado que o app Fleury seja inicializado na pagina inicial
    Quando eu busco uma unidade "brasilia"
    Então eu valido o endereco da unidade 