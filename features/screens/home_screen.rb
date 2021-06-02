class HomeScreen < BaseScreen

    # Elementos
    def elementos_login
        {
            id_card_unidade: "br.com.grupofleury.fleury.hml:id/image_points_of_care",
            id_aviso_permissao_localizacao: "com.android.packageinstaller:id/permission_deny_button"
        }
    end
    #---------------------------------------------------------------------------------#

    # Metodos
    def seleciona_card_unidades
        click 'id', elementos_login[:id_card_unidade]
        aguarda_elemento 'id', elementos_login[:id_aviso_permissao_localizacao]
        click 'id', elementos_login[:id_aviso_permissao_localizacao]
    end

end 