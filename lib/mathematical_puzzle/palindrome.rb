module MathematicalPuzzle
  class Palindrome
    def self.return_minimum_palindrome(number)
      while true
        if fulfill_simultaneously?(number)
          return number.to_s
        end
        number += 1
      end
    end

    private
    def self.fulfill_simultaneously?(number)
      NumberPalindrome.new(number).palindrome? &&
          NumberPalindrome.new(number,NumberPalindrome::OCT).palindrome? &&
          NumberPalindrome.new(number,NumberPalindrome::BIN).palindrome?
    end
  end

  class StringPalindrome < Palindrome
  end

  class NumberPalindrome < Palindrome
    DEC = 'DEC'
    OCT = 'OCT'
    BIN = 'BIN'

    def initialize(number,type=DEC)
      @type = case type
                when DEC;
                  DecimalPalindrome.new(number)
                when OCT;
                  OctalPalindrome.new(number)
                when BIN;
                  BinaryPalindrome.new(number)
                else
                  NonPalindrome.new
              end
    end

    def return_palindrome
      @type.palindrome? ? @type.number : raise
    end

    def palindrome?
      @type.palindrome?
    end
  end

  class DecimalPalindrome
    attr_reader :number

    def initialize(number)
      @number = number.to_s
    end

    def palindrome?
      @number.reverse == @number
    end
  end

  class OctalPalindrome
    attr_reader :number

    def initialize(number)
      @number = number.to_s(2)
    end

    def palindrome?
      @number.reverse == @number
    end
  end

  class BinaryPalindrome
    attr_reader :number

    def initialize(number)
      @number = number.to_s(8)
    end

    def palindrome?
      @number.reverse == @number
    end
  end

  class NonPalindrome
    def palindrome?
      raise
    end
  end
end