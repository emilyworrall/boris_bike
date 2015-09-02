require "docking_station"

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it "returns a working bike when asked to #release_bike" do
      expect(subject.release_bike).to be_a(Bike)
      expect(subject.release_bike).to be_working
    end

    it "raises an error when no bikes are available" do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end


  end


  it "is expected to respond to the method dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end
