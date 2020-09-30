Entao('valido a unidade apresentada') do
    # sleep 5
    # puts find_element(:id, "br.com.grupofleury.fleury.hml:id/point_of_care_full_address").text
    @detalhes = DetalhesScreen.new

    if @detalhes.pega_texto_detalhes(@@endereco_unidade) == false
        expect(raise StandardError, "Não foi apresentado o endereço correto da unidade").to raise_error("Não foi apresentado o endereço correto da unidade")
    end
end