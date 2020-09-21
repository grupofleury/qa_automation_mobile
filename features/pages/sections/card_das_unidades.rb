# frozen_string_literal: true

class CardDasUnidades < SitePrism::Section
  element :nome_das_unidades_apresentadas_no_card, :id, 'point_of_care_name'
  element :nome_rua_apresentada_no_card, :id, 'point_of_care_address'
  element :nome_bairro_apresentado_no_card, :id, 'point_of_care_city'
  element :cep_apresentado_no_card, :id, 'point_of_care_zip_code'
end
