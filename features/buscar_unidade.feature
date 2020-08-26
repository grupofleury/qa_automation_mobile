#language: pt

Funcionalidade: Busca unidade de atendimento
    Para que eu possa agendar um exame e/ou obter informações sobre uma unidade
    Sendo um usuário novo
    Posso acessar o site e procurar pela unidade que me atende 

    Cenario: Buscar unidade Brasilia

            Dado que estou na página inicial
            Quando acesso a página de unidades
            E seleciono a unidade:
                | unidade  | Brasília                                                                |
            Então verifico se o endereço é:
                | endereco | SEPS 715/915, Conjunto A, Bloco E, Asa Sul, Brasília - DF - 70390-155 |
         
