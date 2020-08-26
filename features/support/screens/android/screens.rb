class Home
  def go_home
    #Verifico se exibiu o logo
    find_element(id: "br.com.grupofleury.fleury.hml:id/image_logo")
  end
end

class Unity  
  def go_unity
    #clico em Encontre uma unidade
    $driver.scroll_to("Encontre uma unidade").click
    #Clico em negar permissao para acesso a localização 
    find_element(id: "com.android.permissioncontroller:id/permission_deny_button").click
  end
end

class Search
  def with(unidade)
    #busco a unidade desejada recebida pelo parametro
    $driver.scroll_to(unidade).click
  end
end

class Address
  def go_address
    #procuro o endereco da unidade
    find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address")
  end
end
