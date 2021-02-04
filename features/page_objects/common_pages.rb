# Class Base
class BaseScreen
  def wait_for_xpath(xpath, timeout = 10)
    @driver.wait_true(timeout) do
      @driver.exists { @driver.find_element(:xpath, xpath) }
    end
  end

  def wait_for_id(id, timeout = 10)
    @driver.wait_true(timeout) do
      @driver.exists { @driver.find_element(:id, id) }
    end
  end

  def click_id(id)
    @driver.find_element(:id, id).click
  end

  def click_xpath(xpath)
    @driver.find_element(:xpath, xpath).click
  end

  def send_keys_id(id, field)
    @driver.find_element(:id, id).send_keys(field)
  end

  def send_keys_xpath(xpath, field)
    @driver.find_element(:xpath, xpath).send_keys(field)
  end
end
