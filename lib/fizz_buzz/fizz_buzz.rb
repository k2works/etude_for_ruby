# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzz
  def self.divide(dividend)
    return 'fizz' if (dividend % 3).zero?
    return 'buzz' if (dividend % 5).zero?
    return 'fizzbuzz' if (dividend % 5).zero? || (dividend % 5).zero?
  end
end
