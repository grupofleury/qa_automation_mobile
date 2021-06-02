require 'appium_lib'
require 'cucumber'



def caps 
    {   caps:  {
            platformName: "Android",
            deviceName: "emulator-5554",
            automationName: "uiautomator2",
            app: "app/Fleury.apk",
            newCommandTimeout: "3600"
            }
        }
    
end


Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
