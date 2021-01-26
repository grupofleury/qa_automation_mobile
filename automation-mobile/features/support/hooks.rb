Before do
    #Inicialização do appium driver.
    $driver.start_driver

    #Inicialização da page para que fique disponível para utilização pelo step
    @unidade = DetalharEnderecoPage.new

end

After do
    #finalização do driver
    $driver.driver_quit
end