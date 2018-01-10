# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzz
  def self.divide(dividend)
    return 'FizzBuzz' if (dividend % 3).zero? && (dividend % 5).zero?

    return 'Fizz' if (dividend % 3).zero?

    return 'Buzz' if (dividend % 5).zero?

    nil
  end

  def execute; end
end

# Fizz value object
class FizzValue < FizzBuzz
  def execute; end
end

# Buzz value object
class BuzzValue < FizzBuzz
  def execute; end
end

# FizzBuzz value object
class FizzBuzzValue < FizzBuzz
  def execute; end
end
