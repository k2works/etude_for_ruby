require 'spec_helper'

RSpec.describe MathematicalPuzzle::MathematicalPuzzle do
  describe '#palindrome' do
    it 'becomes a palindrome when it is a decimal number' do
      o = MathematicalPuzzle::MathematicalPuzzle.new
      t = MathematicalPuzzle::MathematicalPuzzle::DEC
      expect(o.palindrome(11,t)).to eq('11')
    end
    it 'becomes a palindrome when it is a octal number' do
      o = MathematicalPuzzle::MathematicalPuzzle.new
      t = MathematicalPuzzle::MathematicalPuzzle::OCT
      expect(o.palindrome(9,t)).to eq('1001')
    end
    it 'becomes a palindrome when it is a binary number' do
      o = MathematicalPuzzle::MathematicalPuzzle.new
      t = MathematicalPuzzle::MathematicalPuzzle::BIN
      expect(o.palindrome(9,t)).to eq('11')
    end
    it 'raise exception' do
      o = MathematicalPuzzle::MathematicalPuzzle.new
      expect{o.palindrome(12,'NON')}.to raise_exception
    end
  end

  describe '#return_minimum_palindrome' do
    it 'fulfill all of the above simultaneously.' do
      o = MathematicalPuzzle::MathematicalPuzzle.new
      expect(o.return_minimum_palindrome).to eq('585')
    end
  end
end