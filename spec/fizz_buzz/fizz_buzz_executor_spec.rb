# frozen_string_literal: true

require 'spec_helper'

RSpec.describe FizzBuzzExecutor do
  describe '#execute' do
    it '100 times' do
      result = FizzBuzzExecutor.execute(100)
      expect(result).to eq('Buzz')
      result = FizzBuzzExecutor.execute(15)
      expect(result).to eq('FizzBuzz')
    end
  end
end
