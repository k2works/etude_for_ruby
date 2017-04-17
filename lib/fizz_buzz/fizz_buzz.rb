class FizzBuzz
  def execute(number)
    return 'FizzBuzz' if (number % 3 == 0) && (number % 5 == 0)
    return 'Fizz' if number % 3 == 0
    return 'Buzz' if number % 5 == 0
    return raise
  end
end