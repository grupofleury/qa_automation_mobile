class Unidades < SitePrism::Page
  element :grant_location_deny, :id, 'com.android.packageinstaller:id/permission_deny_button'
  element :unidades_toolbar, :id, 'toolbar_points_of_care_list'
  elements :card_unidade_nome, :id, 'point_of_care_name'
  elements :card_unidade_logradouro, :id, 'point_of_care_address'
  elements :card_unidade_cidade, :id, 'point_of_care_city'
  elements :card_unidade_cep, :id, 'point_of_care_zip_code'


  def index_card_unidade(nome_unidade)
    x = false
    wait_until_card_unidade_nome_visible
    card_unidade_nome.each_with_index do |item, index|
      if item.text.eql?(nome_unidade)
        x = index
        break
      end
    end
    x
  end

  def swipe_unidade(nome_unidade)
    localizado = false
    Timeout.timeout(15) do
      while true
        card_unidade_nome.each do |nome|
          if nome.text.eql?(nome_unidade)
            localizado = true
            break
          end
        end
        break if localizado
        swipe_down
      end
    end
    unless localizado
      raise "Unidade '#{nome_unidade}' não localizada."
    end
  end

  def dados_card_unidade(nome_unidade)
    index = index_card_unidade(nome_unidade)
    {
      nome: card_unidade_nome[index].text,
      logradouro: card_unidade_logradouro[index].text,
      cidade: card_unidade_cidade[index].text,
      cep: card_unidade_cep[index].text
    }
  end

  def selecionar_card_unidade(nome_unidade)
    index = index_card_unidade(nome_unidade)
    card_unidade_nome[index].click
  end
end