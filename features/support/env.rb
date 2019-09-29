require 'pry'
require 'appium_lib'
require_relative File.expand_path('../common/base_screen.rb', __dir__)
require_relative File.expand_path('../common/modules/unidades_module.rb', __dir__)
class AppiumWorld
end
caps = Appium.load_appium_txt file: File.expand_path("../caps/#{ENV['PLATFORM']}.txt", __FILE__), verbose: true
Appium::Driver.new(caps, true)

Appium.promote_appium_methods Object

World do
  AppiumWorld.new
end
