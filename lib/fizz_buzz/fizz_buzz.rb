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
             else
               NullValue.new
             end
  end

  def execute
    @value.execute
  end
end
