Before do
    driver.start_driver #Sobe o servidor Appium e da inicio a sessao atraves dele
    driver.manage.timeouts.implicit_wait = 10 #Aguarda até 10s para encontrar um elemento

    #Mapeamento generico das pages (semelhante a variavel global)
    @home = Home.new
    @unidades = Unidades.new
    @detalhes_unidade = Detalhes_unidade.new

  end
  
  After do |scenario|
    binary_shot = driver.screenshot_as(:base64) #Tira um screeshot e armazena no formato base64
  
    temp_shot = "logs/temp_shot.png"
  
    File.open(temp_shot, "wb") do |f| #Grava o screenshot em um arquivo
      f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
    end
  
    Allure.add_attachment( #Anexa arquivo (screenshot) na execucao do teste
      name: "screenshot",
      type: Allure::ContentType::PNG,
      source: File.open(temp_shot),
    )
    driver.quit_driver
  end
  