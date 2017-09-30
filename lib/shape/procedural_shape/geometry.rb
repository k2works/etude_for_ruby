module ProceduralShape
  class Geometry
    PI = 3.14
    def area(shape)
      if shape.instance_of? Square
        shape.side * shape.side
      elsif shape.instance_of? Rectangle
        shape.height * shape.width
      elsif shape.instance_of? Circle
        (shape.radius * shape.radius) * PI
      end
    end
  end
end
