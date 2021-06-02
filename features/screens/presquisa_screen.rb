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

        sleep 5
        aguarda_elemento "id", elementos_pesquisa[:id_container_unidades], 30

        unidade_localizada = ""
        container = find_element(:id, elementos_pesquisa[:id_container_unidades])
        cards = container.find_elements(:class, elementos_pesquisa[:class_card_unidade])

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

    def scrollTo el_start, el_end
        #get element coordinates start
        el_start = $driver.find_element(:id, el_start)
        screen_x_start = el_start.location.x
        screen_y_start = el_start.location.y
        #get element coordinates end
        el_end = $driver.find_element(:id, el_end)
        screen_x_end = el_end.location.x
        screen_y_end = el_end.location.y
        Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, delta_x: screen_x_end, delta_y: screen_y_end).perform
      end

end 