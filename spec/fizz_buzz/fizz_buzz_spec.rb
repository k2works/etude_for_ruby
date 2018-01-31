# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzzValueObject do
  describe '#execute' do
    it 'return Fizz' do
      value = FizzBuzzValueObject.new(3)
      result = value.execute
      expect('Fizz').to eq result
    end

    it 'return Buzz' do
      value = FizzBuzzValueObject.new(5)
      result = value.execute
      expect('Buzz').to eq result
    end

    it 'return FizzBuzz' do
      value = FizzBuzzValueObject.new(15)
      result = value.execute
      expect('FizzBuzz').to eq result

      value = FizzBuzzValueObject.new(45)
      result = value.execute
      expect('FizzBuzz').to eq result
    end

    it 'return nil' do
      value = FizzBuzzValueObject.new(1)
      result = value.execute
      expect(result).to be_nil
    end
  end
end
