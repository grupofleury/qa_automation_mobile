Quando(/^escolho a "([^"]*)"$/) do |unidade|
    @@endereco_unidade = @pesquisa.seleciona_unidade_por_titulo(unidade)

    if @@endereco_unidade == ''
        expect(raise StandardError, "Não foi possível selecionar a unidade #{unidade}").to raise_error("Não foi possível selecionar a unidade #{unidade}")
    end

end