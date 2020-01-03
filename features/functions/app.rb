#enconding: utf-8

require_relative 'base_appium'

class App < BaseAppium    

    def main_app
        waitId(ID["app"]["home_welcome"])
    end

    def points_of_care_section
        click_id(ID["app"]["points_of_care"])
        if waitId(ID["app"]["permission_message"])
            click_id(ID["app"]["permission_deny"])
        end
        waitId(ID["app"]["highlight_point_title"])
    end

    def search_point(localidade)
        tries = 10
        for i in (0..tries)
            if exists_text(localidade)
                puts "Encontramos a unidade"
                break
            else
                swipe_up
            end
        end
        click_text(localidade)
        waitId(ID["app"]["point_address"])
    end
end