class Trapezoid
  def initialize(arguments)
    @height = arguments[:height]
    @base1 = arguments[:base1]
    @base2 = arguments[:base2]
    @base3 = arguments[:base3]
    @base4 = arguments[:base4]
  end

  def area
    @height * (@base1 + @base2) / 2
  end

  def perimeter
    @base1 + @base2 + @base3 + @base4
  end
end
