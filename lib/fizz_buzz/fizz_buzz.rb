# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzz
  def initialize(dividend)
    @value = if (dividend % 3).zero? && (dividend % 5).zero?
               FizzBuzzValue.new
             elsif (dividend % 3).zero?
               FizzValue.new
             elsif (dividend % 5).zero?
               BuzzValue.new
             end
  end

  def execute
    @value.execute
  end

  def self.divide(dividend)
    return 'FizzBuzz' if (dividend % 3).zero? && (dividend % 5).zero?

    return 'Fizz' if (dividend % 3).zero?

    return 'Buzz' if (dividend % 5).zero?

    nil
  end
end

# Fizz value object
class FizzValue < FizzBuzz
  def initialize; end

  def execute
    'Fizz'
  end
end

# Buzz value object
class BuzzValue < FizzBuzz
  def initialize; end

  def execute
    'Buzz'
  end
end

# FizzBuzz value object
class FizzBuzzValue < FizzBuzz
  def initialize; end

  def execute
    'FizzBuzz'
  end
end
