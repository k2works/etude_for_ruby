require 'spec_helper'

RSpec.describe FizzBuzz do
  let(:fizz_buzz){ FizzBuzz.new }

  describe '#execute' do
    it 'return Fizz if it is divisible by 3.' do
      fizz_buzz.number=3
      expect(fizz_buzz.execute).to eq('Fizz')
    end
    it 'return Buzz if it is divisible by 5.' do
      fizz_buzz.number=5
      expect(fizz_buzz.execute).to eq('Buzz')
    end
    it 'return fizz_buzz if it is divisible by 3 or 5.' do
      fizz_buzz.number=15
      expect(fizz_buzz.execute).to eq('FizzBuzz')
    end
    context 'run up to 100. ' do
      it 'return Fizz,Buzz,FizzBuzz or RuntimeError' do
        100.times do |n|
          fizz_buzz.number=n
          if n % 3 == 0 && n % 5 == 0
            expect(fizz_buzz.execute).to eq('FizzBuzz')
          elsif n % 3 == 0
            expect(fizz_buzz.execute).to eq('Fizz')
          elsif n % 5 == 0
            expect(fizz_buzz.execute).to eq('Buzz')
          else
            expect{fizz_buzz.execute}.to raise_error(RuntimeError)
          end
        end
      end
    end
  end
end
