require 'em/pure_ruby'
require 'appium_lib'
require 'report_builder'
require 'pry'
require 'rspec'


def caps
    # { caps: {
    #     platformName: "Android",
    #     deviceName: "emulator-5554",
    #     automationName: "uiautomator2",
    #     app: "C:\\git hub thiago\\qa_automation_mobile\\fleury_mobile\\features\\support\\app\\Fleury.apk"
    #     # app: {File.join(File.dirname(__FILE__), "\app\Fleury.apk")}
    # }}
    opts = {
        caps: {
                platformName: "Android",
                deviceName: "emulator-5554",
                automationName: "uiautomator2",
                app: "C:\\git hub thiago\\qa_automation_mobile\\fleury_mobile\\features\\support\\app\\Fleury.apk"
                # app: {File.join(File.dirname(__FILE__), "\app\Fleury.apk")}
        },
        appium_lib: {
            wait_timeout: 60,
            wait_interval: 1
        }
    }
end

# Appium::Driver.new(caps, true)
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object