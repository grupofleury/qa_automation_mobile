require 'appium_capybara'
require 'brstring'
require 'capybara/cucumber'
require 'pry'
require 'rspec'
require 'site_prism'


desired_caps = {
  platformName: 'Android',
  udid: 'emulator-5554',
  app: './APP/Fleury.apk',
  fullReset: true,
  disableWindowAnimation: true
}

url = 'http://localhost:4723/wd/hub'

Capybara.register_driver(:appium) do |app|
    appium_lib_options = {
      server_url: url
    }
    all_options = {
      appium_lib: appium_lib_options,
      caps: desired_caps
    }
    Appium::Capybara::Driver.new app, all_options
end

Capybara.default_driver = :appium
