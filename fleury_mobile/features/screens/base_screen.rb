# Class Base
class BaseScreen

    # Método para esperar um elemento mapeado estar visível na tela por id durante 10s.
    def aguarda_elemento(tipo, elemento, timeout = 10)

        wait_true(timeout) do
            case tipo
            when "id"
                exists { find_element(:id, elemento) }
            when "xpath"
                exists { find_element(:xpath, elemento) }
            end
        end
        
    end
    
    # Método para clicar um elemento mapeado na tela.
    def click(tipo, elemento)

        case tipo
        when "id"
            find_element(:id, elemento).click
        when "xpath"
            find_element(:xpath, elemento).click
        end

    end

    def pega_texto(tipo, elemento)

        texto = ''

        case tipo
        when "id"
            texto = find_element(:id, elemento).text
        when "xpath"
            texto = find_element(:xpath, elemento).text
        end

        return texto

    end

end