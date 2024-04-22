# frozen_string_literal: true

require 'car'

describe 'Car' do
  let(:car) { Car.new(60) }

  context 'Car' do
    describe '#miles' do
      it 'should return 0 miles while the car has not been driven' do
        expect(car.miles).to eq(0)
      end
      it 'should return the correct amount of miles when driven' do
        car.drive(30)
        expect(car.miles).to eq(30)
      end
    end

    describe '#max_gas' do
      it 'should return the max gas amount' do
        expect(car.max_gas).to eq(60)
      end
    end

    describe '#current_gas' do
      it 'should return the curent gas amount left in the car' do
        expect(car.current_gas).to eq(60)
      end
    end

    describe '#engine_on?' do
      it "should return if the car's engine is on" do
        expect(car.engine_on?).to eq(false)
      end
    end
  end

  context 'Driving Scenario' do
    describe '#drive' do
      it 'should update the car current gas' do
        expect(car.current_gas).to eq(60)
        car.drive(20)
        expect(car.current_gas).to eq(40)
      end

      it 'should not be able to drive if the engine is off' do
        expect(car.engine_on?).to eq(false)
        expect(car.drive(20)).to raise_error('Cannot drive, engine is off')
      end

      it "the tank can't go to negative numbers it should stop at 0" do
        car.drive(90)
        expect(car.current_gas).to eq(0)
      end
    end

    describe '#turn_engine_on' do
      it 'should turn the engine on' do
        expect(car.engine_on?).to eq(false)
        car.turn_engine_on
        expect(car.engine_on?).to eq(true)
      end
    end

    describe '#turn_engine_off' do
      it 'should turn the engine off' do
        car.turn_engine_on
        expect(car.engine_on?).to eq(true)
        car.turn_engine_off
        expect(car.engine_on?).to eq(false)
      end
    end
  end

  context 'Gas station scenario' do
    describe '#refill' do
      it 'should refill your car gas' do
        car.drive(20)
        car.refill(20)
        expect(car.current_gas).to eq(60)
      end
    end
  end
end
