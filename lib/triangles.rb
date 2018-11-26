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
    elsif (sides[0] == sides[1] && sides[0] == sides[2])
      "Equilateral Triangle!"
    elsif (sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2])
      "Isosceles Triangle!"
    elsif (sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2])
      "Scalene Triangle!"
    end
  end
end
