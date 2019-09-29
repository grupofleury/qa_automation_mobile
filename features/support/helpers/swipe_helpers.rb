module SwipeHelpers
  #esse arquivo tem como finalidade so para swipes na tela.

  #metodo que faz swipes na tela ate encontrar o elemento solicitado. Limitado a 15 vezes.
  def swipe_to_element(element, speed = 'slow', retries = 15)
    element_count = element_on_screen? element, 2

    unless element_count
      retr = retries
      while retries.positive?
        swipe_screen speed
        sleep 1
        el = element_on_screen? element, 2
        break if el

        retries -= 1
      end

      raise "Swiped #{retr} times but was unable to find '#{element}' element" if retries.zero?
    end
  end


  # rubocop:disable Metrics/AbcSize

  #metodo que faz qualquer tipo de swipe. cima, baixo, direita, esquerda.
  def swipe_screen(speed = 'slow')
    @wsize ||= window_size
    case speed
    when 'slow'
      sy = @wsize.height * 0.70
      ey = @wsize.height * 0.40
      sx =  @wsize.width / 2
      ex =  @wsize.width / 2
      duration = 450
    when 'fast'
      sy = @wsize.height * 0.80
      ey = @wsize.height * 0.30
      sx =  @wsize.width / 2
      ex =  @wsize.width / 2
      duration = 450
    when 'down'
      sy = @wsize.height * 0.30
      ey = @wsize.height * 0.80
      sx =  @wsize.width / 2
      ex =  @wsize.width / 2
      duration = 450
    when 'left'
      sy = @wsize.height * 0.50
      ey = @wsize.height * 0.50
      sx = @wsize.width * 0.9
      ex = @wsize.width * 0.2
      duration = 1000
    when 'right'
      sy = @wsize.height * 0.50
      ey = @wsize.height * 0.50
      sx = @wsize.width * 0.2
      ex = @wsize.width * 0.9
      duration = 1000
    else
      raise "wrong swipe parameter: #{speed}"
    end
    Appium::TouchAction.new.swipe(start_y: sy, end_y: ey, start_x: sx, end_x: ex, duration: duration).perform
  end
  # rubocop:enable Metrics/AbcSize
end
