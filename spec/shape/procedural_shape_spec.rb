require 'spec_helper'

describe ProceduralShape::Geometry do
  describe '#area' do
    let(:geometry) { ProceduralShape::Geometry.new }
    let(:square) { ProceduralShape::Square.new(10) }
    let(:rectangle) { ProceduralShape::Rectangle.new(10, 20) }
    let(:circle) { ProceduralShape::Circle.new(5) }

    it 'calculate area of square' do
      expect(geometry.area(square)).to eq(100)
    end
    it 'calculate area of rectangle' do
      expect(geometry.area(rectangle)).to eq(200)
    end
    it 'calculate area of circle' do
      expect(geometry.area(circle)).to eq(78.5)
    end
  end
end