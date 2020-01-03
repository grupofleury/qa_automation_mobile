#encoding: utf-8
Dado("que usuário inicia aplicativo do Grupo Fleury") do                     
    @app.main_app
  end                                                                          
                                                                               
  Quando("usuario realiza busca pela {string}") do |localidade|                    
    @app.points_of_care_section
    @app.search_point(localidade)
  end                                                                          
                                                                               
  Então("deve validar {string}") do |endereco|                                   
    address = endereco    
    app_address = @base.return_string_id(ID["app"]["point_address"])
    expect(app_address).to eql address    
  end

# Steps chama as funções e classes, no expect, valida o endereço passado no
# bdd com o exibido pelo aplicativo