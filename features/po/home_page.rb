class HomePage
  def initialize
    @welcome = 'txtHomeNotLoggedWelcome'
    @unidades = 'pointsOfCareArea'
    @negar = "com.android.packageinstaller:id/permission_deny_button"
  end

  def esta_na_home?
    find_element(id: @welcome).text == 'Seja bem-vindo!'
  end

  def acessar_unidade
    find_element(id: @unidades).click
  end

  def nao_aceitar_localicazao
    find_element(id: @negar).click
  end
end