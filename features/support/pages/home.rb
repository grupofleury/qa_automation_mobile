class Home
    
    def elementos_login
        {
            id_card_unidade: "br.com.grupofleury.fleury.hml:id/image_points_of_care",
            id_aviso_permissao_localizacao: "com.android.packageinstaller:id/permission_deny_button"
        }
    end

    def clica_unidades
        find_element(id: "br.com.grupofleury.fleury.hml:id/title_points_of_care").click
    end

    def clica_negar_localizacao
        find_element(id: "com.android.permissioncontroller:id/permission_deny_button").click
    end
end