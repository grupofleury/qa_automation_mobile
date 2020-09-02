Dado('que o usuário esta na tela de inicio') do
    log('Iniciou o aplicativo')
    @fleury = FleuryPage.new
end

Quando('clica em Unidades') do
    @fleury.ver_unidades
end

E('clica na unidade de Brasilia') do
    @unidade_brasilia_nome = @fleury.obter_nome_unidade_brasilia_tela_unidades
    @fleury.clicar_unidade_brasilia
end

Então('é possivel validar o endereço da unidade') do
    # @fleury.validar_nome_unidade
end