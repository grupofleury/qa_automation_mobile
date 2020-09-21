module DetalhesDaUnidadeActions
  def scroll_se_o_endereco_nao_estiver_visivel
    swipe_vertical(start_y_percent: 0.6, end_y_percent: 0.3) unless has_endereco_da_unidade?
  end
end