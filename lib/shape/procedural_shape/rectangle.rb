# frozen_string_literal: true

module ProceduralShape
  class Rectangle
    attr_accessor :height, :width
    def initialize(height, width)
      @height = height
      @width = width
    end
  end
end
