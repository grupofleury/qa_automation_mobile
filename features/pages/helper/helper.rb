module Helper
    def swipe_vertical(start_y_percent: 0.8, end_y_percent: 0.2)
    size = $driver.window_size
    starty = size.height * start_y_percent
    endy = size.height * end_y_percent
    startx = size.width / 2
    action = Appium::TouchAction.new($driver).swipe(
      start_x: startx,start_y: starty, 
      end_x: startx,end_y: endy, duration: 2000)
    action.perform
  end
end