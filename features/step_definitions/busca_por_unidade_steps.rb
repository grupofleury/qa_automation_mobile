Dado('que {string} acessou a seção de unidades atráves da página principal') do |_string|
  @pages.home_page.wait_until_unidades_card_visible
  @pages.home_page.unidades_card.click
  @pages.unidade_page.wait_until_negar_permissao_de_acesso_de_localizacao_visible
  @pages.unidade_page.negar_permissao_de_acesso_de_localizacao.click
end

Dado('ela busca pela unidade {string}') do |nome_da_unidade|
  @pages.unidade_page.scroll_ate_a_seguinte_unidade(nome: nome_da_unidade)
end

Quando('ela seleciona o card da unidade {string}') do |nome_da_unidade|
  @endereco = @pages.unidade_page.selecine_o_card_atraves_do_nome_da_unidade_e_retorne_o_endereco(nome: nome_da_unidade)
end

Então('o mesmo endereço apresentado no card selecionado deve ser apresentado na tela de detalhes da unidade') do
  @pages.detalhes_da_unidade_page.scroll_se_o_endereco_nao_estiver_visivel
  @pages.detalhes_da_unidade_page.wait_until_endereco_da_unidade_visible
  expect(@pages.detalhes_da_unidade_page.endereco_da_unidade[:text].downcase).to include @endereco.downcase
end
