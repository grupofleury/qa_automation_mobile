
Before do |scenario|
  if scenario.outline?
    scenario.cell_values.first << (' -=- ' + ENV['PLATFORM'])
  else
    scenario.name << (' -=- ' + ENV['PLATFORM'])
  end

  # TODO: TEMPORARIO
  begin
    start_driver
  rescue StandardError
    sleep 20
    start_driver
  end
  set_wait 1

  if ENV['PLATFORM'].eql? 'ios'
    begin
      set_wait 1
      wait(30) do
        3.times do
        find_element :class, 'XCUIElementTypeAlert'
        alert_dismiss
        end
      end
      wait(3) do
        find_element :class, 'XCUIElementTypeAlert'
        alert_dismiss
      end
    rescue StandardError
      nil
    ensure
      set_wait 5
    end
    unless driver.session_capabilities['udid'].include? '-'
      begin
        wait(15) {find_element :class, 'XCUIElementTypeAlert'}
        alert_accept
      rescue
        nil
      end
    end
  end
end
# rubocop:disable Metrics/LineLength
After do |scenario|
  filename = 'rerun-' + ENV['PLATFORM'] + '.txt'
  if scenario.failed?
    # TODO: temporario, so tira print quando falha
    dir = "#{ENV['PWD']}/screenshots/#{ENV['PLATFORM']}"
    file = "#{dir}/#{Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S')}.png"
    begin
      i ||= 1
      screenshot(file)
      wait(40) {embed file, 'image/png', 'screenshot - ' + ENV['PLATFORM']}
    rescue Appium::Core::Wait::TimeoutError, NoMethodError, Selenium::WebDriver::Error::UnknownError
      i -= 1
      retry if i.zero?
    end
  end

  begin
    close_app
  rescue StandardError
    # ignored
  end
  begin
    driver_quit
  rescue StandardError => e
    puts e.to_s
  end
end
# rubocop:enable Metrics/LineLength
