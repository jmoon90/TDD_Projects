class Rectangle
  def initialize(length, height)
    @length = length
    @height = height
  end

  def area
    @length * @height
  end

  def perimeter
    @length * 2 + @height * 2
  end
end

