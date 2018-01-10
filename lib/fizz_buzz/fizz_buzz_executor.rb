# frozen_string_literal: true

# Execute by count
class FizzBuzzExecutor
  def self.execute(count)
    result = nil
    i = 1
    while i <= count
      value = FizzBuzz.new(i)
      result = value.execute
      i += 1
    end
    result
  end
end
