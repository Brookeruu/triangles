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
    output = "Not a triangle"
    elsif (sides[0] == sides[1] && sides[0] == sides[2])
      output = "Equilateral Triangle!"
    elsif (sides[0] == sides[1] || sides[0] == sides[2] || sides[1] == sides[2])
      output = "Isosceles Triangle!"
    else (sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2])
      output = "Scalene Triangle!"
    end
    return output
  end
end
