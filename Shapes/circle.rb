class Circle
  def initialize(radius)
    @radius = radius
  end

  def perimeter
    (Math::PI * @radius * 2).round(3)
  end

  def area
    (Math::PI * @radius ** 2).round(3)
  end
end
