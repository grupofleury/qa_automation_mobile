require "appium_lib"

#Definição de configurações de dispositivo e aplicação
#que devem ser iniciados no android.
def caps
    { caps: {
        deviceName: "Nexus 5",
        platformName: "Android",
        app: File.join(File.dirname(__FILE__), 'Fleury.apk'),
        appPackage: "br.com.grupofleury.fleury.hml",
        autoGrantPermissions: true,
        newCommandTimeout: "3600"
        }
    }
end

#Instanciação do Driver Appium
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object