class Fleury
    
    include PageBase

    def initialize
        @scroll_unit = ':id, br.com.grupofleury.fleury.hml:id/point_of_care_name'
        # @click_filter = :id, 'br.com.grupofleury.fleury.hml:id/state_filter'
        # @click_state = :id, 'br.com.grupofleury.fleury.hml:id/item_state_filter_text'
        @click_unit = :id, 'br.com.grupofleury.fleury.hml:id/point_of_care_address' 
        @verify_address = :id, 'br.com.grupofleury.fleury.hml:id/point_of_care_full_address'
    end

    # Navegando até a opção unidades    
    def clickUnits
        $driver.scroll_to("Encontre uma unidade").click
    end

    # Clicando na opção unidades
    # def clickFilter        
    #     # find(@click_filter).click
    # end

    # Navegando até a opção desejada
    # def clickState
    #     find(@click_state)
    # end

    # Clicando na opção desejada
    def clickUnit
        $driver.scroll_to("Brasília").click
    end

    # Validando o endereço da unidade
    def verifyAddress
        textUnit = find(@verify_address).text
        textUnit == "SEPS 715/915, Conjunto A, Bloco E,  Asa Sul, Brasília - DF - 70390-155"
    end
end
    