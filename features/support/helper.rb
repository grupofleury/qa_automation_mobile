def swipe_down
  touch_action = Appium::TouchAction.new
  touch_action.swipe(
    start_x: 0.90,
    start_y: 0.5,
    offset_x: 0.5,
    offset_y: 0.5,
    duration:500).perform
end