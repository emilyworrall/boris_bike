require 'bike'

describe Bike do
  it 'responds to working? method' do
    expect(subject).to respond_to :working?
  end

  it 'can be reported broken' do
  	expect(subject).to respond_to :report_broken
  end

  it 'becomes not working when report_broken is called' do
  	bike = Bike.new
  	bike.report_broken
  	expect(bike.working?).to eql(false)
  end
end
