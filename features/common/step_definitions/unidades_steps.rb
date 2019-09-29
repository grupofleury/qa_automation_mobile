
# foram criados esses tipode de specs para que sejam reutilizaveis, de formar compacta e objetiva

  Dado("que acesso o menu {string}") do |string|
    aut = AutenticacaoScreen.new
    aut.acessa_menu string
  end

  Quando("eu pesquiso pela sede de {string}") do |string|
    aut = AutenticacaoScreen.new
    aut.acessa_menu string
  end
  
  Então('confirmo o endereço {string}') do |string|
    aut = AutenticacaoScreen.new
    aut.validate_text_on_screen string
  end
  
  

