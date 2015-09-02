require_relative 'bike'

class DockingStation
  def release_bike
    #return Bike.new
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
