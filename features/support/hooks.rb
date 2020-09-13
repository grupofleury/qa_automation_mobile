Before do
  $stdin.start_driver

  # instancias dos objetos que fazem referencias as pages do projeto

  # pages
  @home = HomePage.new
  @units = UnitsPage.new
  @details_unit = DetailsUnitPage.new

  # views
  @permissions = PermissionsPage.new
end

After do |scenario|
  # apos o fim de cada cenario, eh removido do seu nome caracteres especiais
  # e eh concatenado o status do teste ao seu nome. e por fim serah utilizado
  # como nome da captura de tela
  file_name = scenario.name.gsub(%r{([_@#!%()\-=;><,{}\~\[\]\./\?\"\*\^\$\+\-]+)}, '')
  file_name = scenario.status.to_s.gsub(/[:]/, '') + '_' + file_name.downcase.gsub(/[ ]/, '_')
  file = "log/screenshots/#{file_name}.png"
  page.screenshot(file)
  embed(file, 'image/png', file_name)
  $stdin.driver_quit
end
