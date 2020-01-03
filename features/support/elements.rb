
# Mapeamento do app em hash melhora a manutenção do código e fica bem legível. 

ID = {
    "app" => {        
        "appPackage" => "br.com.grupofleury.fleury.hml",

        #main_app
        "home_welcome" => "txtHomeNotLoggedWelcome",
        "points_of_care" => "title_points_of_care",        

        #app_permissions
        "permission_message" => "com.android.packageinstaller:id/permission_message",
        "permission_allow" => "com.android.packageinstaller:id/permission_allow_button",
        "permission_deny" => "com.android.packageinstaller:id/permission_deny_button",        

        #points_of_care_section        
        "highlight_point_title" => "main_point_of_care_title",
        "point_name" => "point_of_care_name",

        #point_of_care
        "point_address" => "point_of_care_full_address"  
    }
}
