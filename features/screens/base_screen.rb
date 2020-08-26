class BaseScreen

#Método para esperar um elemento mapeado estar visível na tela por xpath durante 10s.
  def wait_for_id(id, timeout = 10)
    @driver.wait_true(timeout) do
      @driver.exists { @driver.find_element(:id, id) }
    end
  end

#Método para clicar um elemento mapeado na tela por id.
  def click_id(id)
    @driver.find_element(:id, id).click
  end


#Método para clicar um elemento mapeado na tela por xpath.
  def click_xpath(xpath)
    @driver.find_element(:xpath, xpath).click
  end

#Método para localizar um elemento mapeado na tela por id.
  def find_element_id(id)
    @driver.find_element(:id, id)
  end

end