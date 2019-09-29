require_relative '../support/helpers/swipe_helpers.rb'
class BaseScreen
  include SwipeHelpers

  def self.identificator(element_name, &block)
    define_method(element_name.to_s, *block)
  end

  class << self
    alias value identificator
    alias action identificator
    alias trait identificator
  end

  def respond_to_missing?
    true
  end


  def wait_for_element_then_touch(element, timeout = 30)
    wait(timeout) { get_element(element).click }
  rescue Appium::Core::Wait::TimeoutError => e
    raise "#{element} not found \nError: #{e.message}"
  end

  def element_on_screen?(element, timeout = 5)
      wait(timeout) { get_element element }
    true
  rescue Appium::Core::Wait::TimeoutError
    false
  end


  def get_element(element)
    begin
      if element.is_a? Array
        case element.size
        when 2
          selector = element[0].to_sym
          element = element[1]
          el = find_element(selector, element)
        when 3
          selector = element[0].to_sym
          count = (element.size == 3 ? element[2].to_i : 0)
          element = element[1]
          el = find_elements(selector, element)[count]
          if el.nil?
            raise Selenium::WebDriver::Error::NoSuchElementError, \
                  "The element #{element} was not found"
          end
        end
      else
        el = find_element :id, element
      end
    rescue StandardError => e
      if e.class.to_s.include?('InvalidSessionIdError' || 'NoSuchDriverError' || 'UnknownError')
        raise e
      else
        raise Selenium::WebDriver::Error::NoSuchElementError, \
              "Could not find the element #{element}"
      end
    end
    el
  end

  def wait(opts = {})
    opts = opts.is_a?(Numeric) ? {timeout: opts, interval: 0.2} : {timeout: 30, interval: 0.2}

    if opts.is_a? Hash
      opts.empty? ? Appium::Core::Wait.until { yield } : Appium::Core::Wait.until(opts) { yield }
    end
  end
end
