require_relative 'fizz'
require_relative 'buzz'
require_relative 'fizz_buzz'
require_relative 'not_fizz_buzz'

class FizzBuzzFactory
  def self.create(number)
    @number = number
    if self.fizz?
      Fizz.new
    elsif self.buzz?
      Buzz.new
    elsif self.fizz_buzz?
      FizzBuzz.new
    else
      NotFizzBuzz.new
    end
  end

  private
  def self.fizz?
    @number % 3 == 0 && @number % 5 != 0
  end

  def self.buzz?
    @number % 3 != 0 && @number % 5 == 0
  end

  def self.fizz_buzz?
    @number % 3 == 0 && @number % 5 == 0
  end
end