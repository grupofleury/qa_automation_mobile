require "allure-cucumber" #Dependencia responsavel pela criacao do report
require "appium_lib"

require "fileutils" #Para limpar os logs e screenshots

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

#Aqui estamos carregando os desired capabilities do arquivo android.txt para a sessao do appium
caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object #Faz com que os metodos do appium sejam nativos dentro do cucumber