require 'spec_helper'

RSpec.describe FizzBuzz do
  describe '.execute' do
    it 'return Fizz if it is divisible by 3.' do
      expect(FizzBuzz.execute(3)).to eq('Fizz')
    end
    it 'return Buzz if it is divisible by 5.' do
      expect(FizzBuzz.execute(5)).to eq('Buzz')
    end
    it 'return FizzBuzz if it is divisible by 3 or 5.' do
      expect(FizzBuzz.execute(15)).to eq('FizzBuzz')
    end
  end
end
