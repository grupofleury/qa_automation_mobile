module UnitsModule

  #metodo criado para facilitar na hora de clicar em campos, sem necessidade de ficar mapeando.
  def element_list_name(nome, string = 'trocar')
    if list_name.is_a? Array
      list_name.map do |f|
        if f.is_a? String
          f.gsub(string, nome)
        else
          f
        end
      end
    else
      list_name
    end
  end

  #metodo para validacao de textos na tela independendo do texto.
  def validate_text_on_screen(text)
    el = element_list_name text
    wait{get_element(el).displayed?}
  end
  
  #metodo para clicar em qualquer campo na tela, baseado em algum texto.
  def acessa_menu(nome)
    el = element_list_name nome
    sleep 3
    swipe_to_element el
    sleep 1
    wait_for_element_then_touch el
  end
    
end

