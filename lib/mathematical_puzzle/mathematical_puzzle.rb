module MathematicalPuzzle
  class MathematicalPuzzle
    def palindrome(number,type)
      case type
        when 'DEC';number.to_s.reverse == number.to_s ? number.to_s : raise
        when 'OCT';number.to_s(2).reverse == number.to_s(2) ? number.to_s(2) : raise
        when 'BIN';number.to_s(8).reverse == number.to_s(8) ? number.to_s(8) : raise
        else
          raise
      end
    end

    def return_minimum_palindrome
      number = 11
      while true
        if number.to_s.reverse == number.to_s && number.to_s(2).reverse == number.to_s(2) && number.to_s(8).reverse == number.to_s(8)
          return number.to_s
        end
        number += 1
      end
    end
  end
end