# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  describe '#divide' do
    it 'return Fizz' do
      result = FizzBuzz.divide(3)
      expect('Fizz').to eq result
    end

    it 'return Buzz' do
      result = FizzBuzz.divide(5)
      expect('Buzz').to eq result
    end

    it 'return FizzBuzz' do
      result = FizzBuzz.divide(15)
      expect('FizzBuzz').to eq result

      result = FizzBuzz.divide(45)
      expect('FizzBuzz').to eq result
    end

    it 'return nil' do
      result = FizzBuzz.divide(1)
      expect(result).to be_nil
    end
  end
end
