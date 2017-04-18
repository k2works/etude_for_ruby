require 'spec_helper'

RSpec.describe FizzBuzz do
  let(:fizz){ FizzBuzzFactory.new(3).create }
  let(:buzz){ FizzBuzzFactory.new(5).create }
  let(:fizz_buzz){ FizzBuzzFactory.new(15).create }

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
          fizz_buzz = FizzBuzzFactory.new(n).create
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
        not_fizz_buzz = FizzBuzzFactory.new(4).create
        expect{not_fizz_buzz.execute}.to raise_error(RuntimeError)
        not_fizz_buzz = FizzBuzzFactory.new('Three').create
        expect{not_fizz_buzz.execute}.to raise_error(RuntimeError)
      end
    end
  end
end
