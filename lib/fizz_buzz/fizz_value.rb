# frozen_string_literal: true

# Fizz value object
class FizzValue < FizzBuzzValueObject
  VALUE = 'Fizz'

  def initialize(number)
    @number = number
    @value = VALUE
  end

  def execute
    @value
  end
end
