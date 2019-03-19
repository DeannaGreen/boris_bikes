require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if there are no bikes avalible' do
      expect{subject.release_bike}.to raise_error('No bikes avalible')
    end
  end

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
