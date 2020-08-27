class UnidadePage
  def initialize
    @endereco = 'point_of_care_full_address'
  end

  def endereco_igual_a? endereco
    elemento = find_element(id: @endereco)
    texto = remove_quebra_de_linha elemento.text
    texto == endereco
  end

  private

  def remove_quebra_de_linha texto
    texto.tr("\n", '')
  end

end