class Triangle
  attr_accessor(:side1, :side2, :side3)

  def initialize(side1,side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle
    sides = [side1,side2, side3].sort
    if (sides[0] + sides[1] <= sides[2] || sides[0] == 0)
      "Not a triangle"
    else
      return false
  end
end
end
