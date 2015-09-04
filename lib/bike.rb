class Bike
  
  def initialize
  	@working = true
  end

  def working?
  	true
  	return @working
  end

  def report_broken
  	@working = false
  	return nil
  end


end

#if bike is reported broken -> broken? = true