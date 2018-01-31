# frozen_string_literal: true

# Buzz value object
class BuzzValue < FizzBuzzValueObject
  def initialize(number)
    @number = number
    @value = 'Buzz'
  end

  def execute
    @value
  end
end
