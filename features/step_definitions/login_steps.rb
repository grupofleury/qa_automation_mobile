Dado("que acesso a tela Home {string}") do |mensagem_home|
  expect(@screen.home.home_go.text).to eql mensagem_home
end

Quando("seleciono o Menu Unidades") do
  @screen.home.menu_unidades
  @screen.home.nao_permitir_localizacao
end

Quando("seleciono a Unidade de Brasília") do
  expect(@screen.unidades.pagina_unidades.text).to eql "Filtrar por estado"
  @screen.unidades.seleciona_unidade
end

Então("posso ver o {string} da Unidade") do |endereco|
  @screen.unidadeselecionada.verifica_unidade
  expect(@screen.unidadeselecionada.verifica_unidade.text.gsub("\n", "")).to eql endereco
end
