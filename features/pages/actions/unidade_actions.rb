module UnidadeActions
  def scroll_ate_a_seguinte_unidade(nome:)
    i = 0
    wait_until_cards_das_unidades_visible
    status = false
    nome_da_ultima_unidade = ''
    while(!status) do
      cards_das_unidades.each do |card|
       nome_da_ultima_unidade = card.nome_das_unidades_apresentadas_no_card[:text]
       status = true if card.nome_das_unidades_apresentadas_no_card[:text].downcase.eql? nome.downcase
      end
      swipe_vertical(start_y_percent: 0.6, end_y_percent: 0.2) unless status
      verifique_se_estamos_no_final_da_lista = nome_da_ultima_unidade.eql? cards_das_unidades[cards_das_unidades.size - 1].nome_das_unidades_apresentadas_no_card[:text]
      raise "A seguinte unidade não foi encontrada na lista! -> #{nome}" if verifique_se_estamos_no_final_da_lista && !status
      i = i + 1
    end
  end

  def selecine_o_card_atraves_do_nome_da_unidade_e_retorne_o_endereco(nome:)
    i = 0
    status = false
    while(i < cards_das_unidades.size && !status) do
      status = cards_das_unidades[i].nome_das_unidades_apresentadas_no_card[:text].downcase.eql? nome.downcase
      i = i + 1 unless status
    end
    endereco = cards_das_unidades[i].nome_rua_apresentada_no_card[:text]
    cards_das_unidades[i].nome_das_unidades_apresentadas_no_card.click
    endereco
  end
end