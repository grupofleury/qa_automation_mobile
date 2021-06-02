class Home
    def click_deny_location
        if find_element(:id, 'com.android.packageinstaller:id/permission_deny_button')
            find_element(:id, 'com.android.packageinstaller:id/permission_deny_button').click
        end
        # begin
           
        # rescue
        #     $error = "Pop up de localizacao aceitada anteriormente."
        # end
    end
    
    def click_points_care
        sleep 5
        find_element(:id, 'br.com.grupofleury.fleury.hml:id/image_points_of_care').click
        sleep 3
    end
end