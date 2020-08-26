require_relative "android/screens"

class DroidScreens
  attr_accessor :home, :unity, :search, :address

  def initialize
    #inicializo as variaveis
    @home = Home.new
    @unity = Unity.new
    @search = Search.new
    @address = Address.new
  end
end
