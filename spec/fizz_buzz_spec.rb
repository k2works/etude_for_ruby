require 'spec_helper'

RSpec.describe FizzBuzz do
  let(:fizz){ FizzBuzz.new(3) }
  let(:buzz){ FizzBuzz.new(5) }
  let(:fizz_buzz){ FizzBuzz.new(15) }

  describe '#execute' do
    it 'return Fizz if it is divisible by 3.' do
      expect(fizz.execute).to eq('Fizz')
    end
    it 'return Buzz if it is divisible by 5.' do
      expect(buzz.execute).to eq('Buzz')
    end
    it 'return fizz_buzz if it is divisible by 3 or 5.' do
      expect(fizz_buzz.execute).to eq('FizzBuzz')
    end

    context 'run up to 100. ' do
      it 'return Fizz,Buzz,FizzBuzz or RuntimeError' do
        100.times do |n|
          fizz_buzz = FizzBuzz.new(n)
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

    context 'exception' do
      it 'return RuntimeError' do
        fizz_buzz = FizzBuzz.new(4)
        expect{fizz_buzz.execute}.to raise_error(RuntimeError)
        fizz_buzz = FizzBuzz.new('Three')
        expect{fizz_buzz.execute}.to raise_error(RuntimeError)
      end
    end
  end
end
