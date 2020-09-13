# classe para mapear os elementos e funcoes da home page do app
class HomePage
  def elements
    {
      # id's
      card_unit: 'image_points_of_care'
    }
  end

  def enter_card_unit
    wait_true { $stdin.find_element(:id, elements[:card_unit]) }.click
  end
end
