# language: pt

Funcionalidade: Validar localidade
        
@buscarlocal

Esquema do Cenario: Buscar localidade
    Dado que usuário inicia aplicativo do Grupo Fleury
    Quando usuario realiza busca pela <localidade>
    Então deve validar <endereco>
            
    Exemplos:
        | localidade | endereco                                                                      |
        | "Brasília" | "SEPS 715/915, Conjunto A, Bloco E, null\nAsa Sul, Brasília - DF - 70390-155" |

# Aqui preferi trabalhar com esquema de cenário pois facilita na inclusão de novos sites e endereços,
# a configuração do device está na pasta caps/appium_fleury.txt
# Fiz a automação a partir de um device físico
            