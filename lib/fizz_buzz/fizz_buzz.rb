# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzz
  def self.divide(dividend)
    if dividend % 3 == 0 && dividend % 5 == 0
      return 'FizzBuzz'
    end

    if dividend % 3 == 0
      return 'Fizz'
    end

    if dividend % 5 == 0
      return 'Buzz'
    end
  end

  def self.execute(count)
    result = nil
    i = 1
    while i <= count
      result = divide(i)
      i += 1
    end
    result
  end
end
