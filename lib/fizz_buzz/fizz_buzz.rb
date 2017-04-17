class FizzBuzz
  def execute(number)
    @number = number
    if fizz?
      'Fizz'
    elsif buzz?
      'Buzz'
    elsif fizz_buzz?
      'FizzBuzz'
    else
      raise
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