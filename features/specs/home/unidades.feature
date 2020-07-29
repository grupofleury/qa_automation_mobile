 #language: pt
 
 Funcionalidade: Acessar o App Fleury e Pesquisar a Unidade Brasília
                Para que eu possa acessar a tela de Unidades
                Devo ver a tela Home e selecionar o Menu Unidades
                O mesmo não poderá fornecer a localização
                Sendo assim poderei selecionar a Unidade Brasília e ver o seu endereço
 
 Esquema do Cenário: Selecionar Unidade Brasíli
                Dado que acesso a tela Home <mensagem_home>
                Quando seleciono o Menu Unidades
                E seleciono a Unidade de Brasília
                Então posso ver o <endereco> da Unidade
 
 Exemplos:
 | mensagem_home     | endereco                                                                |
 | "Seja bem-vindo!" | "SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155" |