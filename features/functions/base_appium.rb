#encoding: utf-8

class BaseAppium
    # Separei esta classe para trabalhar as funções basicas no mobile, como aguardar um elemento
    # clicar num botão, etc. 
    # Assim, passo somente o id ou texto que desejo nas funções e logo executo
    # Fica mais legígel e de fácil manutenção

    #Método para esperar um elemento mapeado estar visível na tela por id durante 10s.
    def waitId(id, timeout = 10)
        begin
            $driver.wait_true(timeout) { $driver.exists { $driver.find_element(:id, id) } }
        rescue
            puts "Elemento de id: #{id} nao encontrado"
        end
    end
    
    #Método para clicar um elemento mapeado na tela por id.
    def click_id(id)
        $driver.find_element(:id, id).click
    end

    #Método para clicar um elemento mapeado na tela por xpath.
    def click_text(text)
        $driver.find_element(:xpath, "//*[@text='#{text}']").click
    end

    #Método para retornar se um elemento, por texto, existe na tela.
    def exists_text(text)
        begin
            $driver.exists { $driver.find_element(:xpath, "//*[@text='#{text}']") }
        rescue
            raise "Elemento de texto: #{text} nao encontrado"
        end
    end

    #Método para localizar um elemento, por id, mapeado na tela.
    def find_id(id)
        begin
            $driver.find_element(:id, id)
        rescue
            raise "Elemento de id: #{id} nao encontrado"
        end
    end

    #Método que retorna como String um elemento, por id, mapeado na tela.
    def return_string_id(id)
        element = find_id(id)
        element.attribute('text')
    end
    
    def activate_app(package)
        $driver.activate_app(package)
    end

    def swipe_up
        $driver.swipe(start_x: 250, start_y: 800, end_x: 250, end_y: 400, duration: 500)
    end
end