Dado('que inicio o app') do
    @contexto = ContextoScreen.new
    @contexto.aguarda_carregar_home
end