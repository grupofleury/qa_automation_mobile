# frozen_string_literal: true

class PageFactory
  def page_name(name:)
    Object.const_get(name.to_s).new
  end

  def home_page
    page_name(name: 'Home')
  end

  def unidade_page
    page_name(name: 'Unidade')
  end

  def detalhes_da_unidade_page
    page_name(name: 'DetalhesDaUnidade')
  end
end
