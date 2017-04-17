require 'spec_helper'

RSpec.describe FizzBuzz do
  let(:fizz_buzz){ FizzBuzz.new }

  describe '.execute' do
    it 'return Fizz if it is divisible by 3.' do
      expect(fizz_buzz.execute(3)).to eq('Fizz')
    end
    it 'return Buzz if it is divisible by 5.' do
      expect(fizz_buzz.execute(5)).to eq('Buzz')
    end
    it 'return fizz_buzz if it is divisible by 3 or 5.' do
      expect(fizz_buzz.execute(15)).to eq('FizzBuzz')
    end
    context 'run up to 100. ' do
      it 'return Fizz,Buzz,FizzBuzz or RuntimeError' do
        100.times do |n|
          if n % 3 == 0 && n % 5 == 0
            expect(fizz_buzz.execute(n)).to eq('FizzBuzz')
          elsif n % 3 == 0
            expect(fizz_buzz.execute(n)).to eq('Fizz')
          elsif n % 5 == 0
            expect(fizz_buzz.execute(n)).to eq('Buzz')
          else
            expect{fizz_buzz.execute(n)}.to raise_error(RuntimeError)
          end
        end
      end
    end
  end
end
