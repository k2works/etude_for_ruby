require 'spec_helper'

RSpec.describe MathematicalPuzzle do
  describe 'Palindrome' do
    describe '.return_minimum_palindrome' do
      it 'fulfill all of decimal octal binary palindrome simultaneously.' do
        i = MathematicalPuzzle::Palindrome.return_minimum_palindrome(11)
        expect(i).to eq('585')
      end
    end
  end

  describe 'NumberPalindrome' do
    describe '#return_palindrome' do
      it 'return a decimal palindrome when it is a decimal number' do
        i = create_palindrome_instance(11, MathematicalPuzzle::NumberPalindrome::DEC)
        expect(i.return_palindrome).to eq('11')
      end
      it 'return a octal palindrome when it is a octal number' do
        i = create_palindrome_instance(9, MathematicalPuzzle::NumberPalindrome::OCT)
        expect(i.return_palindrome).to eq('1001')
      end
      it 'return a binary palindrome when it is a binary number' do
        i = create_palindrome_instance(9, MathematicalPuzzle::NumberPalindrome::BIN)
        expect(i.return_palindrome).to eq('11')
      end
      it 'raise exception when it is not palindrome' do
        i = create_palindrome_instance(12, 'NON')
        expect{i.return_palindrome}.to raise_exception
      end
    end

    def create_palindrome_instance(number, type)
      MathematicalPuzzle::NumberPalindrome.new(number, type)
    end
  end

  describe 'FourArithmeticOperations' do
    describe '.calc' do
      it 'return eval from array' do
        val = ['0','+','0','+','0','+','1']
        ret = MathematicalPuzzle::FourArithmeticOperations.calc(val)
        expect(ret).to eq(1)
      end

      it 'return eval from array' do
        val = ['0','','8','+','0','+','0']
        ret = MathematicalPuzzle::FourArithmeticOperations.calc(val)
        expect(ret).to eq(8)
      end

      it 'return eval from array' do
        val = ['1','/','0','/','0','/','0']
        ret = MathematicalPuzzle::FourArithmeticOperations.calc(val)
        expect(ret).to be_nil
      end
    end

    describe '.execute' do
      it 'return 351 when arg is 153' do
        i = MathematicalPuzzle::FourArithmeticOperations.execute(351)
        expect(i).to eq('153')
      end

      it 'return 1395 when arg is 5931' do
        i = MathematicalPuzzle::FourArithmeticOperations.execute(5931)
        expect(i).to eq('1395')
      end
    end
  end
end