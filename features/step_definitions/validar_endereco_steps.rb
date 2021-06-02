Dado('que o app Fleury seja inicializado na pagina inicial') do
    @home.click_points_care
    @home.click_deny_location
  end
  
  Quando('eu busco uma unidade {string}') do | string |
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('eu valido o endereco da unidade') do
    pending # Write code here that turns the phrase above into concrete actions
  end