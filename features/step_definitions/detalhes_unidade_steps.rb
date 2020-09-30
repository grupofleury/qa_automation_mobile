Dado('que estou na tela inicial do aplicativo') do
  @home = Home.new
  @home.wait_until_img_home_fleury_visible
end

Dado('que estou na seção de Unidades') do
  @home.img_points_care.click
  @unidades = Unidades.new
  @unidades.wait_until_grant_location_deny_visible
  @unidades.grant_location_deny.click
end

Quando('seleciono a unidade {string}') do |nome_unidade|
  @unidades.wait_until_unidades_toolbar_visible
  @unidades.swipe_unidade(nome_unidade)
  @dados_card_unidade = @unidades.dados_card_unidade(nome_unidade)
  @unidades.selecionar_card_unidade(nome_unidade)
end

Então('visualizo o endereço na tela de detalhes da unidade') do
  detalhes_unidade = DetalhesUnidades.new
  detalhes_unidade.wait_until_full_address_visible
  endereco = detalhes_unidade.full_address.text
  expect(endereco).to include(@dados_card_unidade[:logradouro])
  expect(endereco).to include(@dados_card_unidade[:cidade])
  expect(endereco).to include(@dados_card_unidade[:cep])
end