require_relative './sections/card_das_unidades.rb'
require_relative './helper/Helper.rb'
require_relative './actions/unidade_actions.rb'

class Unidade < SitePrism::Page
  include Helper
  include UnidadeActions

  element :negar_permissao_de_acesso_de_localizacao, :xpath, '//*[contains(@resource-id,"permission_deny_button")]'
  sections :cards_das_unidades, CardDasUnidades, :xpath, 
  '//*[contains(@resource-id,"point_of_care_zip_code")]/preceding-sibling::*[contains(@resource-id,"point_of_care_name")]/ancestor::androidx.appcompat.widget.LinearLayoutCompat[1]'

  def elemento_da_lista_do_filtro_por_facilidade_por_nome(nome:)
          lista_de_elementos_do_filtro_por_facilidade.select { 
            |item| item.text.downcase.include? name.downcase 
          }.first
  end
end
