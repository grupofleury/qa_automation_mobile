Dado("que o usuário acesse o menu Points of care") do
  @screen.home.search_units
  @screen.home.btn_deny
end

Quando("selecionar a unidade de Brasília") do
  @screen.points.element_swipe
  @screen.points.access_units
end

Então("o sistema deverá apresentar o endereço") do |expect_address|
  expect(@screen.unit.validate_unit_address).to eql expect_address
end
