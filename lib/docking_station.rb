require_relative 'bike'

class DockingStation
  def release_bike
    #return Bike.new
    fail "No bikes available"
  end

  def dock(bike)
  end
end
