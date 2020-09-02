class FleuryPage

    def initialize
        get_screen_mappings
    end

    #####O APK FLEURY DO REPOSITORIO INICIA EM UMA PÁGINA ESTÁTICA SEM BOTOES, NÃO É POSSIVEL MAPEAR OS ELEMENTOS

    def ver_unidades
        # click @mappings['btn_unidades']
    end

    def clicar_unidade_brasilia
        # click @mappings['btn_unidade_brasilia']
    end

    def obter_nome_unidade_brasilia_tela_unidades
        # return get_text @mappings['nome_unidade_brasilia_tela_unidades']
    end

    def obter_nome_unidade_brasilia_tela_da_unidade
        # return get_text @mappings['nome_unidade_brasilia_tela_unidade']
    end

    def validar_nome_unidade(nome_unidade)
        expect(nome_unidade).to eql(obter_nome_unidade_brasilia_tela_da_unidade)
    end
 end