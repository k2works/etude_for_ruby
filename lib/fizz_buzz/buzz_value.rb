# frozen_string_literal: true

# Buzz value object
class BuzzValue < FizzBuzzValueObject
  VALUE = 'Buzz'

  def initialize(number)
    @number = number
    @value = VALUE
  end

  def execute
    @value
  end
end
