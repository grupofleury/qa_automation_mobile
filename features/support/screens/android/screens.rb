class Home
  attr_reader :menu_unidades, :permission_deny

  def initialize
    @menu_units = "br.com.grupofleury.fleury.hml:id/title_points_of_care"
    @permission_deny = "com.android.packageinstaller:id/permission_deny_button"
  end

  def search_units
    find_element(id: @menu_units).click
  end

  def btn_deny
    find_element(id: @permission_deny).click
  end
end

class PointsOfCare
  def element_swipe
    sleep 2
    Appium::TouchAction.new.swipe(x: 545, start_y: 550, end_x: 545, exd_y: 5, durattion: 100).perform
  end

  def access_units
    find_element(xpath: "//android.widget.TextView[@text='Brasília']").click
  end
end

class Unit
  def validate_unit_address
    find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address").text.gsub("\n", " ")
  end
end
