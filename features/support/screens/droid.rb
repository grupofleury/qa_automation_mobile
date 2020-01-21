
require_relative "android/screens"

class DroidScreens
  attr_accessor :home, :points, :unit

  def initialize
    @home = Home.new
    @points = PointsOfCare.new
    @unit = Unit.new
  end
end
