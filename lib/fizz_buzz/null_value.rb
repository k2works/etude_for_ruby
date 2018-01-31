# frozen_string_literal: true

# Null object
class NullValue < FizzBuzzValueObject
  def initialize(number)
    @number = number
  end

  def execute; end
end
