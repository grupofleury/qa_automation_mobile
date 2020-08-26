class FleuryScreen < BaseScreen

  def validar_elementos_home
    wait_for_id(@home_title, 10)
    find_element_id(@home_title)
  end

  def click_elements_card
    click_id(@card_unidades)
    click_id(@btn_negar)
    wait_for_id(@title_care)
  end
end