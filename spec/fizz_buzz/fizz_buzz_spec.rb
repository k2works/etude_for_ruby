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

    it 'return fizzbuzz' do
      result = FizzBuzz.divide(15)
      expect('FizzBuzz').to eq result

      result = FizzBuzz.divide(45)
      expect('FizzBuzz').to eq result
    end
  end

  describe '#execute' do
    it '100 times' do
      result = FizzBuzz.execute(100)
      expect(result).to eq('Buzz')
      result = FizzBuzz.execute(15)
      expect(result).to eq('FizzBuzz')
    end
  end
end
