class Triangle
  def initialize(arguments)
    @side = arguments[:side]
    @length = arguments[:length]
    @breadth = arguments[:breadth]
    @angle = arguments[:angle]
  end

  def perimeter
    @side * 3
  end

  def area
    @length * @breadth/2
  end

  def sas_area
    0.5 * @length * @breadth * Math::sin(@angle).round(2)
  end

  def sas_perimeter
      @length + @breadth * 2
  end
end
