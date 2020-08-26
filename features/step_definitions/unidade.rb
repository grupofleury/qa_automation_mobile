Dado("que estou na página inicial") do
  # Verifico se exibiu o logo
  expect(@screen.home.go_home.displayed?).to be true
end

Quando("acesso a página de unidades") do
  # Acesso as unidades
  @screen.unity.go_unity
end

Quando("seleciono a unidade:") do |table|
  # Transforma a Data Table em um array de hashes
  unity_data = table.rows_hash
  # Envio array de hashes para procurar a unidade
  @screen.search.with(unity_data["unidade"])
end

Então("verifico se o endereço é:") do |table|
  # Transforma a Data Table em um array de hashes
  address_data = table.rows_hash
  # Envio texto para variavel
  check_text = @screen.address.go_address.text
  # Retiro a quebra de linha e realizo a comparacao com de endereco
  expect(check_text.tr("\n", "")).to eql address_data["endereco"]
end
