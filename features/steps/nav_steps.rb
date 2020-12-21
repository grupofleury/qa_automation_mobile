Dado('que estou na tela principal do app') do

end

Quando('acesso a opcao Unidades') do
    @home.clica_unidades
    @home.clica_negar_localizacao
end

Quando('procuro pela unidade {string}') do |string_unidade|                          
    @unidade = string_unidade
    #Aqui vamos clicar na unidade que for escrita na tabela de exemplo do gherkin. Assim evitamos o hard code e deixamos o teste dinâmico
    @unidades.clica_unidade(@unidade)
end

Entao('visualiso o endereco da unidade') do
expect(@detalhes_unidade.tview_endereco.text).to include @unidade
end