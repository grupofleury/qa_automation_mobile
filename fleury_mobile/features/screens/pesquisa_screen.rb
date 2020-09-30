class PesquisaScreen < BaseScreen

    # Elementos
    def elementos_pesquisa
        {
            id_container_unidades: 'br.com.grupofleury.fleury.hml:id/pointsOfCareList',
            class_card_unidade: 'androidx.appcompat.widget.LinearLayoutCompat',
            id_card_unidade: 'br.com.grupofleury.fleury.hml:id/point_of_care_name',
            id_endereco: 'br.com.grupofleury.fleury.hml:id/point_of_care_address'
        }
    end
    #---------------------------------------------------------------------------------#

    # Metodos
    def seleciona_unidade_por_titulo(unidade)

        aguarda_elemento "id", elementos_pesquisa[:id_container_unidades], 30

        container = find_element(:id, elementos_pesquisa[:id_container_unidades])
        cards = container.find_elements(:class, elementos_pesquisa[:class_card_unidade])

        puts "numero de cards: #{cards.length}"
        unidade_localizada = ""

        cards.each do |card|

            unidade_atual = card.find_element(:id, elementos_pesquisa[:id_card_unidade])

            if unidade_atual.text == unidade

                endereco = card.find_element(:id, elementos_pesquisa[:id_endereco]).text.strip

                unidade_atual.click
                unidade_localizada = endereco
                break

            end

        end

        return unidade_localizada

    end

end