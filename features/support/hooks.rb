Before do
    $driver.start_driver
    @home = Home.new
    
end

After do
    $driver.driver_quit
end