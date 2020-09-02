require 'yaml'
require 'rspec'
require 'selenium-cucumber'
require 'browserstack/local'
require 'appium_lib'

TASK_ID = (ENV['TASK_ID'] || 0).to_i
CONFIG_NAME = ENV['CONFIG_NAME'] || 'single'

CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), "../../config/#{CONFIG_NAME}.config.yml")))
CONFIG['user'] = ENV['BROWSERSTACK_USERNAME'] || CONFIG['user']
CONFIG['key'] = ENV['BROWSERSTACK_ACCESS_KEY'] || CONFIG['key']

caps = CONFIG['common_caps'].merge(CONFIG['browser_caps'][TASK_ID])
$bs_local = nil

if ENV['BROWSERSTACK_APP_ID']
  caps['app'] = ENV['BROWSERSTACK_APP_ID']
end

if caps['browserstack.local'] && caps['browserstack.local'].to_s == 'true'
  $bs_local = BrowserStack::Local.new
  bs_local_args = { "key" => "#{CONFIG['key']}" }
  $bs_local.start(bs_local_args)
end

def caps
    {  caps:{
        deviceName:"Simulator",
        platformName: "Android",
        automationName: "Appium (default)",
        # app:(File.join(File.dirname(__FILE__), "Fleury.apk")),
        app: "/Users/lorreneogbonna/Desktop/qa_automation_mobile/features/support/Fleury.apk",
        appPackage: "br.com.grupofleury.fleury.hml",
        appActivity: "br.com.grupofleury.dashboard.HomeActivity",
        newCommandTimeout: "3680"     
        }
    }
end

desired_caps = {
  caps: caps,
  appium_lib: {
    server_url: 'http://localhost:4723/wd/hub'
    # server_url: "https://#{CONFIG['user']}:#{CONFIG['key']}@#{CONFIG['server']}/wd/hub"
  }
}

# Appium::Driver.new(caps, true)
# Appium.promote_appium_methods Object 

begin
  $appium_driver = Appium::Driver.new(desired_caps, true)
  $driver = $appium_driver.start_driver
rescue Exception => e
  puts e.message
  Process.exit(0)
end

$wait = Selenium::WebDriver::Wait.new(:timeout => 30)
