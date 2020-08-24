def call_driver
  # herda os métodos para o cucumber.
  Appium.promote_appium_methods Object
  update_settings(ignoreUnimportantViews: true)
  update_settings({fixImageFindScreenshotDims: true, fixImageTemplateSize: true,
                   autoUpdateImageElementPosition: true})
end

Before do |scenario|
  call_driver
end

# Após execução do cenário realiza um print da tela
After do |scenario|
  if scenario.failed?
    if !File.directory?("results/screnshots")
      FileUtils.mkdir_p("results/screnshots")
    end
    time = Time.now.strftime("%d-%m-%Y_%H:%M")
    file = File.join("screnshots", "#{time}.png")
    $driver.screenshot(file)
    attach("#{file}", "image/png")
  else
    time = Time.now.strftime("%d-%m-%Y_%H.%M")
    file = File.join("screnshots", "#{time}.png")
    $driver.screenshot(file)
    attach("#{file}", "image/png")
 end
  $driver.driver_quit
end