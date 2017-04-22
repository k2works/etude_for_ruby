require 'spec_helper'

RSpec.describe MathematicalPuzzle::Palindrome do
  describe '#return_palindrome' do
    it 'becomes a palindrome when it is a decimal number' do
      t = MathematicalPuzzle::Palindrome::DEC
      o = MathematicalPuzzle::Palindrome.new(11,t)
      expect(o.return_palindrome).to eq('11')
    end
    it 'becomes a palindrome when it is a octal number' do
      t = MathematicalPuzzle::Palindrome::OCT
      o = MathematicalPuzzle::Palindrome.new(9,t)
      expect(o.return_palindrome).to eq('1001')
    end
    it 'becomes a palindrome when it is a binary number' do
      t = MathematicalPuzzle::Palindrome::BIN
      o = MathematicalPuzzle::Palindrome.new(9,t)
      expect(o.return_palindrome).to eq('11')
    end
    it 'raise exception' do
      o = MathematicalPuzzle::Palindrome.new(12,'NON')
      expect{o.return_palindrome}.to raise_exception
    end
  end

  describe '#return_minimum_palindrome' do
    it 'fulfill all of the above simultaneously.' do
      o = MathematicalPuzzle::Palindrome.return_minimum_palindrome(11)
      expect(o).to eq('585')
    end
  end
end