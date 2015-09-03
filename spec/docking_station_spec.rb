require 'docking_station'

describe DockingStation do
       
  describe '#new' do
    it 'should take one argument' do
      expect(DockingStation).to respond_to(:new).with(1).argument 
    end
  end

  describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases a working bike' do
      subject.dock Bike.new
      bike = subject.release_bike
      expect(bike).to respond_to :working?
    end  
  end

  describe '#dock' do
    
    it  {is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
    
end


