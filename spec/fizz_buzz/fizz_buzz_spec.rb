# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzzValueObject do
  describe '#execute' do
    it 'return Fizz' do
      number = 3
      value = create_value_object(number)
      result = value.execute
      expect('Fizz').to eq result
    end

    it 'return Buzz' do
      number = 5
      value = create_value_object(number)
      result = value.execute
      expect('Buzz').to eq result
    end

    it 'return FizzBuzz' do
      number = 15
      value = create_value_object(number)
      result = value.execute
      expect('FizzBuzz').to eq result

      number = 45
      value = create_value_object(number)
      result = value.execute
      expect('FizzBuzz').to eq result
    end

    it 'return nil' do
      number = 1
      value = create_value_object(number)
      result = value.execute
      expect(result).to be_nil
    end
  end

  def create_value_object(number)
    FizzBuzzValueObject.create(number)
  end
end
