# classe para mapear os elementos e funcoes da pagina que contem os detalhes de cada
# unidade
class DetailsUnitPage
  def elements
    {
      # id's
      full_address: 'point_of_care_full_address'
    }
  end

  def address
    wait_true { $stdin.find_element(:id, elements[:full_address]) }.text.gsub("\n", '')
  end
end
