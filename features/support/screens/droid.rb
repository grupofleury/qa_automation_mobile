require_relative "android/screens"

class DroidScreens
  attr_accessor :home, :unidades, :unidadeselecionada

  def initialize
    @home = Home.new
    @unidades = Unidades.new
    @unidadeselecionada = UnidadeSelecionada.new
  end
end
