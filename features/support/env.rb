require 'rspec/expectations'
require 'appium_lib'
require 'appium_console'
require 'cucumber'
require 'pry'
require 'capybara/dsl'
require 'capybara'
require 'selenium-webdriver'
require 'rspec'
require 'pry'
require "faker"

class AppiumWorld
end

caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', 'appium_fleury.txt')
caps = Appium.load_appium_txt file: caps_path, verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }

# Configuração padrão do Appium
