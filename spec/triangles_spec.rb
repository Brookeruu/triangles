require 'rspec'
require 'pry'
require 'triangles'

describe('#triangles') do
  it("Determines if sum of 2 sides are <= to 3rd") do
    triangle1 = Triangle.new(2,2,4)
    expect(triangle1.is_triangle()).to(eq("Not a triangle"))
  end

  it("Determines if equilateral triangle") do
      triangle2 = Triangle.new(4,4,4)
    expect(triangle2.is_triangle()).to(eq("Equilateral Triangle!"))
  end

  it("Determines if isosceles triangle") do
    triangle3 = Triangle.new(4,4,5)
  expect(triangle3.is_triangle()).to(eq("Isosceles Triangle!"))
  end

  it("Determines if scalene triangle") do
    triangle3 = Triangle.new(6,4,5)
  expect(triangle3.is_triangle()).to(eq("Scalene Triangle!"))
  end


end
