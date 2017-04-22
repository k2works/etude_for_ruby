module MathematicalPuzzle
  class Palindrome
    DEC = 'DEC'
    OCT = 'OCT'
    BIN = 'BIN'

    def initialize(number=11,type=DEC)
      @number = number
      @type = type
    end

    def palindrome
      case @type
        when DEC;
          reverse_dec? ? @number.to_s : raise
        when OCT;
          reverse_oct? ? @number.to_s(2) : raise
        when BIN;
          reverse_bin? ? @number.to_s(8) : raise
        else
          raise
      end
    end

    def return_minimum_palindrome
      while true
        if reverse_dec? && reverse_oct? && reverse_bin?
          return @number.to_s
        end
        @number += 1
      end
    end

    private
    def reverse_bin?
      @number.to_s(8).reverse == @number.to_s(8)
    end

    def reverse_oct?
      @number.to_s(2).reverse == @number.to_s(2)
    end

    def reverse_dec?
      @number.to_s.reverse == @number.to_s
    end
  end
end