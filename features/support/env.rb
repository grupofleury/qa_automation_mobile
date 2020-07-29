# frozen_string_literal: true

require 'appium_lib'
require 'pry'
require 'cucumber'

def caps
  { caps: {
    automationName: "UiAutomator2",
    platformName: "Android",
    deviceName: "Emulator",
    app: File.join(File.dirname(__FILE__), 'Fleury.apk'),
    udid: "3ad41ec1513f7ece",
    adbExecTimeout: "60000",
    appPackage: "br.com.grupofleury.fleury.hml",
    appActivity: "br.com.grupofleury.dashboard.HomeActivity",
    autoGrantPermissions: true,
    noReset:true
  }}
end

Appium::Driver.new(caps, true).start_driver
Appium.promote_appium_methods Object

# foi utilizado um smartphone fisico para a realizacao dos testes
