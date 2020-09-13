require 'appium_capybara'
require 'appium_lib'
require 'appium_lib_core'
require 'awesome_print'
require 'capybara'
require 'capybara/cucumber'
require 'rspec/core'
require 'selenium-webdriver'

def android_caps
  { caps: {
    platformName: 'Android',
    app: File.join(File.dirname(__FILE__), 'app/Fleury.apk'),
    appPackage: 'br.com.grupofleury.fleury.hml',

    # utilizei a versao 9 para testar com meu dispositivo fisico (moto g6)
    # e usei a versao 8.1.0 para testar um dispositivo virtual no ubuntu
    platformVersion: '8.1.0'

    # para fechar a view que solicita permissao de localizacao utilizei o
    # o clique por solicitacao da documentacao, contudo, fiz tambem testes
    # concedendo permissoes ao app com essa capability abaixo = true, devido
    # a esse comentario, mantive ela abaixo para visualizacao
    # autoGrantPermissions: true
  } }
end

Capybara.register_driver(:appium)
Appium::Driver.new(android_caps, true)
Appium.promote_appium_methods Object
Capybara.default_driver = :appium

# aqui remove as capturas de tela antes de comecar uma nova rodada de teste
# de modo a evitar de nos atrapalharmos com screenshots antigos
system("rm #{File.join(Dir.pwd + '/log/screenshots/*.png')}")
