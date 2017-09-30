require 'spec_helper'

describe PolymorphicShape::Square do
  describe '#area' do
    let(:square) { PolymorphicShape::Square.new(10) }
    subject { square.area }
    it { is_expected.to eq 100 }
  end
end

describe PolymorphicShape::Rectangle do
  describe '#area' do
    let(:rectangle) { PolymorphicShape::Rectangle.new(10, 20) }
    subject { rectangle.area }
    it { is_expected.to eq 200 }
  end
end

describe PolymorphicShape::Circle do
  describe '#area' do
    let(:circle) { PolymorphicShape::Circle.new(5) }
    subject { circle.area }
    it { is_expected.to eq 78.5 }
  end
end
