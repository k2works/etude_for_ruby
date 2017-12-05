# frozen_string_literal: true

module PolymorphicShape
  class Circle < Shape
    PI = 3.14
    attr_accessor :radius
    def initialize(radius)
      @radius = radius
    end

    def area
      (@radius * @radius) * PI
    end
  end
end
