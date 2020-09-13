# classe para mapear os elementos e funcoes da pagina que lista as
# unidades disponiveis
class UnitsPage
  def select(unit)
    locator = "(//android.widget.TextView[contains(@text,'#{unit}')])[1]"
    scroll_to_exact(unit)
    $stdin.find_element(:xpath, locator).click
  end
end
