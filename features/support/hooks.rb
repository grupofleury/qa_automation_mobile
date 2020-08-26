require 'report_builder'
require 'date'
require 'base64'

# Executa antes dos testes
Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  #Tipo do device
  device_type = "android"

  @screen = DroidScreens.new if device_type.eql?("android")
  @screen = IOSScreen.new if device_type.eql?("ios")
end

After do
  encoded_img = driver.screenshot_as(:base64)
  attach("data:image/png;base64,#{encoded_img}", "image/png")

  driver.quit_driver
end

d = DateTime.now
@current_date = d.to_s.tr(':', '-')

at_exit do
  ReportBuilder.configure do |config|
      config.input_path = 'log/report.json'
      config.report_path = 'log/report'
      config.report_types = [:html]
      config.report_title = 'Desafio Fleury - App'
      config.compress_image = true
      config.additional_info = { 'App' => 'Android', 'Data de execução' => @current_date }
      config.color = 'indigo'
  end
  ReportBuilder.build_report
end