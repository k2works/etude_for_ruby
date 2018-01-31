# frozen_string_literal: true

# FizzBuzz operation
class FizzBuzzValueObject
  attr_reader :number, :value

  def execute; end

  def self.create(dividend)
    if (dividend % 3).zero? && (dividend % 5).zero?
      FizzBuzzValue.new(dividend)
    elsif (dividend % 3).zero?
      FizzValue.new(dividend)
    elsif (dividend % 5).zero?
      BuzzValue.new(dividend)
    else
      NullValue.new(dividend)
    end
  end
end
