Dir[File.join(File.dirname(__FILE__), '../page_objects/*_pages.rb')].each { |file| require file }

module Screens
  def base
    @base ||= BaseScreen.new
  end

  def home
    @home ||= HomeScreen.new
  end
end
