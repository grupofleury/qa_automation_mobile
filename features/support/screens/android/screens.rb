class Home
  def home_go
    find_element(id: "br.com.grupofleury.fleury.hml:id/txtHomeNotLoggedWelcome")
  end

  def nao_permitir_localizacao
    find_element(id: "com.android.packageinstaller:id/permission_deny_button").click
  end

  def menu_unidades
    find_element(id: "br.com.grupofleury.fleury.hml:id/image_points_of_care").click
  end
end

class Unidades
  def pagina_unidades
    find_element(id: "br.com.grupofleury.fleury.hml:id/state_filter")
  end

  #Esse método foi implementado porque nessa versão do Appium, o comando scroll_to não está tão performático
  #Sendo assim, consegui estruturar dessa forma, não é uma boa prática, mas atende o cenário proposto
  def seleciona_unidade
    Appium::TouchAction.new.swipe(start_x: 545, start_y: 560, offset_x: 545, offset_y: 560, durattion: 100).perform
    $driver.find_element(xpath: "//android.widget.TextView[@text='Brasília']").click
  end
end

class UnidadeSelecionada
  def verifica_unidade
    find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address")
  end
end
