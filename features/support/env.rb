require 'appium_lib'

def caps
  {
    caps: {
      deviceName: 'Simulator',
      platformName: 'Android',
      app: File.join(File.dirname(__FILE__), 'Fleury.apk'),
      appPackage: 'br.com.grupofleury.fleury.hml',
      appActivity: 'br.com.grupofleury.dashboard.HomeActivity',
      newCommandTimeout: '3600'
    }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
