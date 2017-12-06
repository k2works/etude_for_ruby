# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzz
  def self.divide(dividend)
    return 'FizzBuzz' if (dividend % 3).zero? && (dividend % 5).zero?

    return 'Fizz' if (dividend % 3).zero?

    return 'Buzz' if (dividend % 5).zero?
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
