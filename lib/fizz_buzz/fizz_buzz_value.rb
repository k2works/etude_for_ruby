# frozen_string_literal: true

# FizzBuzz value object
class FizzBuzzValue < FizzBuzzValueObject
  VALUE = 'FizzBuzz'

  def initialize(number)
    @number = number
    @value = VALUE
  end

  def execute
    @value
  end
end
