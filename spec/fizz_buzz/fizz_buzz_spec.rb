# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  describe '#divide' do
    it 'return fizz' do
      result = FizzBuzz.divide(3)
      expect('fizz').to eq result
    end

    it 'return buzz' do
      result = FizzBuzz.divide(5)
      expect('buzz').to eq result
    end

    it 'return fizzbuzz' do
      result = FizzBuzz.divide(15)
      expect('fizzbuzz').to eq result

      result = FizzBuzz.divide(45)
      expect('fizzbuzz').to eq result
    end
  end

  describe '#execute' do
    it '100 times' do
      result = FizzBuzz.execute(100)
      expect(result).to eq('buzz')
      result = FizzBuzz.execute(15)
      expect(result).to eq('fizzbuzz')
    end
  end
end
