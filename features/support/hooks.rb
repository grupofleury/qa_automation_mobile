# frozen_string_literal: true

Before do
  $driver.start_driver
end

After do |scenario|
  add_screenshot(scenario)
end

def add_screenshot(scenario)
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
  nome_cenario = nome_cenario.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  @driver.save_viewport_screenshot(screenshot)
  embed(screenshot, 'image/png')
end

at_exit do
  time = Time.now.getutc
  ReportBuilder.configure do |config|
    config.json_path = 'report.json'
    config.report_path = 'cucumber_web_report'
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Cucumber Report Builder web automation test results'
    config.compress_images = false
    config.additional_info = { 'Project name' => 'Test', 'Platform' => 'Integration', 'Report generated' => time }
  end
  ReportBuilder.build_report
end
