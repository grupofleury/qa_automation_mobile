Entao('valido a unidade apresentada') do

    # puts @detalhes.pega_texto_detalhes(@@endereco_unidade)
    if @detalhes.pega_texto_detalhes(@@endereco_unidade) == false
        expect(raise StandardError, "Não foi apresentado o endereço correto da unidade").to raise_error("Não foi apresentado o endereço correto da unidade")
    end
end 