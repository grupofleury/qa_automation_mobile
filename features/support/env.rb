require 'appium_lib'
require 'appium_lib_core'
require 'cucumber'
require 'rspec'
require 'rake'
require 'rspec/retry'
require 'pry'


opts = {
      caps: {
          deviceName: "T06280A5NC",
          platformName: "Android",
          automationName: "uiautomator1",
          appPackage: "br.com.grupofleury.fleury.hml",
          appActivity: "br.com.grupofleury.dashboard.HomeActivity",
          autoGrantPermissions: true,
          autoAcceptAlerts: true,
          app: (File.join(File.dirname(__FILE__), "../apk/Fleury.apk")),
          newCommandTimeout: 3000,
          skipServerInstallation: true,
          skipDeviceInitialization: true,
          disableWindowAnimation: true,
          ignoreUnimportantViews: true,
          disableAndroidWatchers: true,
          uiautomator2ServerLaunchTimeout: 60000,
          uiautomator2ServerInstallTimeout: 120000,
          nativeInstrumentsLib: false
      },
      appium_lib: {
          wait_interval: 1
      }
  }

# A flag true dentro da função driver define que esta usando global.
$driver = Appium::Driver.new(opts, true)
# Inicia o driver.
$driver.start_driver(open_timeout: 36000, read_timeout: 36000)
# Seta um timeout interno no driver, pelo caps nao funciona.
$driver.manage.timeouts.implicit_wait = 35
# mostra algumas configuracoes do driver.
puts $driver.get_settings

# Importa a nossa page base.
require_relative '../../features/framework/page_base'
# Importa nossos screens.
require_relative 'page_helper'

# adiciona no world para ser visivel na classes.
World(PageBase)
