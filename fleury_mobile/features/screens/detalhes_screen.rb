class DetalhesScreen < BaseScreen

    # Elementos
    def elementos_detalhes
        {
            id_titulo_detalhes: 'br.com.grupofleury.fleury.hml:id/point_of_care_full_address'
        }
    end
    #---------------------------------------------------------------------------------#

    # Metodos
    def pega_texto_detalhes(endereco)
        # aguarda_elemento :id, elementos_detalhes[:id_titulo_detalhes]
        sleep 5
        endereco_atual = pega_texto :id, elementos_detalhes[:id_titulo_detalhes]
        endereco_ok = endereco_atual[endereco]

        return endereco_ok
    end
end