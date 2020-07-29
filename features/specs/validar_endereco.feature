#language: pt

@mobile
@validar_endereco
Funcionalidade: Validar endereço da unidade Brasilia
  
  Cenario: Validar endereco da unidade
    Dado que acesso Unidades
    E seleciono negar
    Quando selecionar a unidade '<nome_da_unidade>'
    Então valido o '<endereco>' apresentado

 Exemplos:
   | nome_da_unidade    |                          endereco                                         |                       
   |     Brasília       |  SEPS 715/915, Conjunto A, Bloco E,  Asa Sul, Brasília - DF - 70390-155   |

   # utilizado exemplos para podermos realizar a validacao de todas as unidades somente populando
   # esse campo  