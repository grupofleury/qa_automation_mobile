Dado('que eu abra o app') do
  @homePage = HomePage.new
  fail unless @homePage.esta_na_home?
end

Entao('eu clico em Unidades') do
  @homePage.acessar_unidade
end

E('nego a localização') do
  @homePage.nao_aceitar_localicazao
end

E('clico em {string}') do |unidade|
  @unidadesPage = UnidadesPage.new
  @unidadesPage.clicar_na_unidade unidade
end

Entao('o endereço é {string}') do |endereco|
  @unidadePage = UnidadePage.new
  fail unless @unidadePage.endereco_igual_a? endereco
end