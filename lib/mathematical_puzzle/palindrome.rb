module MathematicalPuzzle
  class Palindrome
    DEC = 'DEC'
    OCT = 'OCT'
    BIN = 'BIN'

    def initialize(number,type=DEC)
      @number = number
      @type = type
    end

    def palindrome
      case @type
        when DEC;
          DecimalPalindrome.new(@number,@type).palindrome? ? @number.to_s : raise
        when OCT;
          OctalPalindrome.new(@number,@type).palindrome? ? @number.to_s(2) : raise
        when BIN;
          BinaryPalindrome.new(@number,@type).palindrome? ? @number.to_s(8) : raise
        else
          raise
      end
    end

    def return_minimum_palindrome
      @number = 11
      while true
        if DecimalPalindrome.new(@number,@type).palindrome? && OctalPalindrome.new(@number,@type).palindrome? && BinaryPalindrome.new(@number,@type).palindrome?
          return @number.to_s
        end
        @number += 1
      end
    end
  end

  class DecimalPalindrome < Palindrome
    def initialize(number,type)
      super
    end

    def palindrome?
      @number.to_s.reverse == @number.to_s
    end
  end

  class OctalPalindrome < Palindrome
    def initialize(number,type)
      super
    end

    def palindrome?
      @number.to_s(2).reverse == @number.to_s(2)
    end
  end

  class BinaryPalindrome < Palindrome
    def initialize(number,type)
      super
    end

    def palindrome?
      @number.to_s(8).reverse == @number.to_s(8)
    end
  end
end