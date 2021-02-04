Quando('Acesso unidade e seleciono a unidade de Brasília') do
  home.acessar_unidades
end

Então('verifico se o endereço da unidade aparece corretamente') do
  @unidade_bra = @driver.find(home.elementos[:txt_unidade_bra]).text
  expect(@unidade_bra).to eql "SEPS 715/915, Conjunto A, Bloco E, 
Asa Sul, Brasília - DF - 70390-155"
end
