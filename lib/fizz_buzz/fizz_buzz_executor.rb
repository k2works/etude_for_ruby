# frozen_string_literal: true

# Execute by count
class FizzBuzzExecutor
  def self.execute(count)
    result = nil
    i = 1
    while i <= count
      result = FizzBuzz.divide(i)
      i += 1
    end
    result
  end
end
