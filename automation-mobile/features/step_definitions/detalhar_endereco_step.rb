  #Implementação dos passos gerados pelo cucumber
  
  Dado('que eu acesso a opcao Unidades') do
    @unidade.acessar_unidade
  end
  
  Quando('eu seleciono a Unidade de Brasília') do
    @unidade.selecionar_unidade
  end

  Então('valido o {string} apresentado') do |string|
    expect(@unidade.endereco_unidade).to eql string
  end