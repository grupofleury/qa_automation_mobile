start_test = Fleury.new

Dado('que estou na página inicial') do
    # Navegando até a opção unidades    
    start_test.clickUnits  
  end
  
  Quando('clico na opção unidades') do
    # Clicando na opção unidades
    # start_test.clickFilter
  end
  
  Quando('seleciono a {string}') do |string|
     # Clicando na opção unidades
     start_test.clickUnit
  end
  
  Então('verifico se o {string} esta correto') do |string, table|
    # Validando o endereço da unidade
    start_test.verifyAddress
  end