# language: pt
# encoding: utf-8


Funcionalidade: Pesquisa unidades por facilidades
    Como um usuário
    Eu quero realizar uma busca de unidades

    Contexto: Acesso App
        Dado que inicio o app

    Esquema do Cenario: Busca unidades
        Quando seleciono o card unidades
        E escolho a "<unidade>"
        Entao valido a unidade apresentada

        Cenarios:
        | unidade    |
        | Alphaville |    