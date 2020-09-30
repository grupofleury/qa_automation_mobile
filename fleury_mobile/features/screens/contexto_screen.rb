class ContextoScreen < BaseScreen

    # Elementos
    def elementos_contexto
        {
            id_titulo: "br.com.grupofleury.fleury.hml:id/txtHomeNotLoggedWelcome"
        }
    end
    #---------------------------------------------------------------------------------#

    # Metodos
    def aguarda_carregar_home
        aguarda_elemento 'id', elementos_contexto[:id_titulo], 30
    end

end