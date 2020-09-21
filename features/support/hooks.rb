# frozen_string_literal: true

Before do
  $driver = Capybara.current_session.driver.appium_driver
  @pages = PageFactory.new
  Capybara.default_max_wait_time = 30
end

Before('@wip or @ignore') do
  pending
end

After do |_scenario|
  # if scenario.failed?
  #   @driver.browser.save_screenshot("reports/#{scenario.__id__}.png")
  #   embed("reports/#{scenario.__id__}.png", 'image/png', 'SCREENSHOT')
  #   p "FAILED ==> #{scenario.feature.name} => #{scenario.name}"
  #   log = if @driver.appium_driver.device_is_android?
  #           @driver.appium_driver.get_log('logcat').join("\n")
  #         elsif @driver.appium_driver.device_is_ios?
  #           @driver.appium_driver.get_log('syslog').join("\n")
  #         end
  #   File.write('reports/device.log', log)
  #   embed('reports/device.log', 'text/plain', 'LOGS')
  # end

  Capybara.current_session.driver.quit
end
