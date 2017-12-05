# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzz do
  # Divide
  describe '#divide' do
    ## 3/3=Fizz
    it 'return fizz' do
      result = FizzBuzz.divide(3)
      expect('fizz').to eq result
    end
    ## 5/5=Bizz
    ## 15/3=FizzBuzz
    ## 15/5=FizzBuzz
  end
  # Execute
  ## 100回繰り返し実行する
end
