class FizzBuzz
  def execute(number)
    @number = number
    if fizz_buzz?
      'FizzBuzz'
    elsif fizz?
      'Fizz'
    elsif buzz?
      'Buzz'
    else
      raise
    end
  end

  private
  def fizz_buzz?
    (@number % 3 == 0) && (@number % 5 == 0)
  end

  def fizz?
    @number % 3 == 0
  end

  def buzz?
    @number % 5 == 0
  end
end