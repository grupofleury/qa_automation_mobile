class DetalharEnderecoPage
    #Classe que possui os métodos para mapear e realizar as ações
    #necessarias com a aplicação

    
    def acessar_unidade
        find_element(id: "image_points_of_care").click
    end

    def selecionar_unidade
        find_element(xpath: '//*[@text="Brasília"]').click
    end

    def endereco_unidade
       return find_element(id: "point_of_care_full_address").text
    end

end