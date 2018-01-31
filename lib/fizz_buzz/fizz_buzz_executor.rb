# frozen_string_literal: true

# Execute by count
class FizzBuzzExecutor
  def self.execute(count)
    result = nil
    i = 1
    while i <= count
      value = FizzBuzzValueObject.create(i)
      result = value.execute
      i += 1
    end
    result
  end
end
