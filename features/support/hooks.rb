Before do
  $driver = Capybara.current_session.driver.appium_driver
end

After do |scenario|
  timer_path = Time.now.strftime('%Y%m%d')
  file_path = "screenshots/test_#{scenario.status}/run_#{timer_path}"
  FileUtils.mkdir_p(file_path) unless File.exist?(file_path)

  scenario_name = scenario.name.remover_acentos.gsub(/\s+/, '_').gsub(/\W/, '').downcase
  file_name = "#{Time.now.strftime('%H%M%S')}_#{scenario_name}"

  path_screenshot = "#{file_path}/#{file_name}.png"
  save_screenshot(path_screenshot)
  attach(File.read(path_screenshot), 'image/png')
end
