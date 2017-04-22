module MathematicalPuzzle
  class Palindrome
    DEC = 'DEC'
    OCT = 'OCT'
    BIN = 'BIN'

    def palindrome(number,type)
      case type
        when DEC;
          reverse_dec?(number) ? number.to_s : raise
        when OCT;
          reverse_oct?(number) ? number.to_s(2) : raise
        when BIN;
          reverse_bin?(number) ? number.to_s(8) : raise
        else
          raise
      end
    end

    def return_minimum_palindrome
      number = 11
      while true
        if reverse_dec?(number) && reverse_oct?(number) && reverse_bin?(number)
          return number.to_s
        end
        number += 1
      end
    end

    private
    def reverse_bin?(number)
      number.to_s(8).reverse == number.to_s(8)
    end

    def reverse_oct?(number)
      number.to_s(2).reverse == number.to_s(2)
    end

    def reverse_dec?(number)
      number.to_s.reverse == number.to_s
    end
  end
end