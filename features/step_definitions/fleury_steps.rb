def initialize
  # Ids
  @home_title = "txtHomeNotLoggedWelcome"
  @title_care = "main_point_of_care_title"
  @card_unidades = "pointsOfCareArea"
  @filter = "state_filter"
  @go_gps = "go_to_location"

  # Xpath
  @btn_negar = "//android.widget.Button[@text='NEGAR']"
  @city_brasilia = "//android.widget.TextView[@text='Brasília']"
  @cereja_bolo = "//android.widget.TextView[@text='SEPS 715/915, Conjunto A, Bloco E, \nAsa Sul, Brasília - DF - 70390-155']"

  #Textos e Label
  @texto_home = "Seja bem-vindo!"
  @texto_permitir = "PERMITIR"
end


Dado("que estou na home do app") do
  wait_true { exists { find_element(:id, @home_title) } }
  find_element(id: @home_title)

end

Quando("clico no card de Unidades") do
  find_element(id: @card_unidades).click
  find_element(xpath: @btn_negar).click
  wait_true { exists { find_element(:id, @title_care) } }

end

Quando("clico no card de Brasília") do
  wait_true { exists { find_element(:id, @filter) } }
  find_element(id: @filter)
  3.times {Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.4, duration:1000).perform}
  find_element(xpath: @city_brasilia).click
end

Entao("visualizo o card de Brasília com seu endereço") do
  wait_true { exists { find_element(:id, @go_gps) } }
  find_element(id: @go_gps)
  find_element(xpath: @cereja_bolo)
end
