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
    context 'run up to 100. ' do
      it 'return Fizz,Buzz,FizzBuzz or RuntimeError' do
        100.times do |n|
          if n % 3 == 0 && n % 5 == 0
            expect(FizzBuzz.execute(n)).to eq('FizzBuzz')
          elsif n % 3 == 0
            expect(FizzBuzz.execute(n)).to eq('Fizz')
          elsif n % 5 == 0
            expect(FizzBuzz.execute(n)).to eq('Buzz')
          else
            expect{FizzBuzz.execute(n)}.to raise_error(RuntimeError)
          end
        end
      end
    end
  end
end
