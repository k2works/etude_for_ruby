# frozen_string_literal: true

# FizzBuzz value object
class FizzBuzzValue < FizzBuzzValueObject
  def initialize(number)
    @number = number
    @value = 'FizzBuzz'
  end

  def execute
    @value
  end
end
