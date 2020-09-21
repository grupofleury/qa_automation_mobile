require_relative './helper/Helper.rb'
require_relative './actions/detalhes_da_unidade_actions.rb'

class DetalhesDaUnidade < SitePrism::Page
  include Helper
  include DetalhesDaUnidadeActions

  element :endereco_da_unidade, :id, 'point_of_care_full_address'
end
