# frozen_string_literal: true

# Fizz value object
class FizzValue < FizzBuzzValueObject
  def initialize(number)
    @number = number
    @value = 'Fizz'
  end

  def execute
    @value
  end
end
