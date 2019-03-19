require_relative 'bike'

class DockingStation
  attr_reader :bike
  @bike = Bike.new

  def release_bike
    fail 'No bikes avalible' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
