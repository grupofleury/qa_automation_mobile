# frozen_string_literal: true
unidade = Unidade.new

Dado('que acesso Unidades') do
  unidade.acessar_unidades
end

Dado('seleciono negar') do
  unidade.btn_negar
end

Quando('selecionar a unidade {string}') do |nome_da_unidade|
  unidade.sel_unidade(nome_da_unidade)
end

Então('valido o {string} apresentado') do |endereco|
  unidade.valida_endereco(endereco)
end
