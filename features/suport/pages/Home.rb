class Home
    def clica_unidades
        find_element(id: "br.com.grupofleury.fleury.hml:id/title_points_of_care").click
    end

    def clica_negar_localizacao
        find_element(id: "com.android.permissioncontroller:id/permission_deny_button").click
    end
end

