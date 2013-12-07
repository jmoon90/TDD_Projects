require_relative 'shapes'
require_relative 'square'
require_relative 'rectangle'
require_relative 'circle'
require_relative 'triangle'
require_relative 'trapezoid'

describe Square do
  it 'calculates the squares area' do
    expect(Square.new(5).area).to eql(25)
  end

  it 'calculates the squares perimeter' do
    expect(Square.new(5).perimeter).to eql(20)
  end
end

describe Rectangle do
  it 'calculates the rectangles area' do
    expect(Rectangle.new(3,5).area).to eql(15)
  end
  it 'calculates the rectangles perimeter' do
    expect(Rectangle.new(3,5).perimeter).to eql(16)
  end
end

describe Circle do
  it 'calculates the circles perimeter' do
    expect(Circle.new(5).perimeter).to eql (31.416)
  end
  it 'calculates the circles area' do
    expect(Circle.new(5).area).to eql(78.54)
  end
end

describe Triangle do
  equilateral = { side: 5, length:3, breadth: 4 }
  sas = { angle: 28, length: 3, breadth: 4 }
  it 'calculates the equilateral triangles perimeter' do
    expect(Triangle.new(equilateral).perimeter).to eql(15)
  end
  it 'calculates the equilateral triangles area' do
    expect(Triangle.new(equilateral).area).to eql(6)
  end

  it 'calculates the sas triangle area' do
    expect(Triangle.new(sas).sas_area).to eql(1.62)
  end
  it 'calculates the sas triangle perimeter' do
    expect(Triangle.new(sas).sas_perimeter).to eql(11)
  end
end

describe Trapezoid do
  perimeter_arguments = { base1: 5, base2: 15, base3: 7, base4: 10 }
  area_arguments = { height: 10, base1: 5, base2: 8 }
  it 'calculates the trapezoids perimeter' do
    expect(Trapezoid.new(perimeter_arguments).perimeter).to eql(37)
  end
  it 'calculates the trapezoids area' do
    expect(Trapezoid.new(area_arguments).area).to eql(65)
  end
end
