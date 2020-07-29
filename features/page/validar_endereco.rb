# frozen_string_literal: true

class Unidade
  def acessar_unidades
    $driver.find_element(id: "br.com.grupofleury.fleury.hml:id/image_points_of_care").click
  end

  def btn_negar
    sleep 1
    $driver.find_element(id:"com.android.permissioncontroller:id/permission_deny_button").click    	    
  end

  def sel_unidade(unidade)
    sleep 2
    Appium::TouchAction.new.swipe(x: 545, start_y: 550, end_x: 545, exd_y: 5, durattion: 100).perform
    sleep 2
    $driver.find_element(xpath: "//android.widget.TextView[@text='#{unidade}']").click
    sleep 2
  end

  def valida_endereco(endereco)
    resultado=$driver.find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address").text.gsub("\n", " ")
    resultado == endereco
  end
end

# def sel_unidade foi pensado em poder procurar por id via exemplo na feature que torna o teste
# de facil manutencao
