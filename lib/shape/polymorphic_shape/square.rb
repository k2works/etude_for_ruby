# frozen_string_literal: true

module PolymorphicShape
  class Square < Shape
    attr_accessor :side
    def initialize(side)
      @side = side
    end

    def area
      @side * @side
    end
  end
end
