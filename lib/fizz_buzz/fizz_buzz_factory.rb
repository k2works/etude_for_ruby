require_relative 'fizz'
require_relative 'buzz'
require_relative 'fizz_buzz'
require_relative 'not_fizz_buzz'

class FizzBuzzFactory
  def initialize(number)
    @number = number
  end

  def create
    if fizz?
      Fizz.new
    elsif buzz?
      Buzz.new
    elsif fizz_buzz?
      FizzBuzz.new
    else
      NotFizzBuzz.new
    end
  end

  private
  def fizz?
    @number % 3 == 0 && @number % 5 != 0
  end

  def buzz?
    @number % 3 != 0 && @number % 5 == 0
  end

  def fizz_buzz?
    @number % 3 == 0 && @number % 5 == 0
  end
end