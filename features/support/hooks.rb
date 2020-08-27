Before do
  $driver.start_driver
end

After do |scenario|
  unless pasta_existe? 'log'
    criar_pasta 'log'
  end

  unless pasta_existe? 'log/screenshots'
    criar_pasta 'log/screenshots'
  end

  scenario_name = scenario.name.gsub(/[^A-Za-z0-9]/, '')
  scenario_name = scenario_name.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{scenario_name}#{Time.now.to_i}.png"
  $driver.save_viewport_screenshot(screenshot)
  attach(screenshot, 'image/png')
  $driver.driver_quit
end

def pasta_existe? pasta
  File.directory? pasta
end

def criar_pasta pasta
  FileUtils.mkdir_p pasta
end