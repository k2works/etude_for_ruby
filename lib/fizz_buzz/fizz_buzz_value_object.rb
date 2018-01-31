# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzzValueObject
  attr_reader :number, :value

  def initialize(dividend)
    @number = dividend
    @value_object = if (dividend % 3).zero? && (dividend % 5).zero?
                      FizzBuzzValue.new(dividend)
                    elsif (dividend % 3).zero?
                      FizzValue.new(dividend)
                    elsif (dividend % 5).zero?
                      BuzzValue.new(dividend)
                    else
                      NullValue.new(dividend)
                    end
  end

  def execute
    @value_object.execute
  end
end
