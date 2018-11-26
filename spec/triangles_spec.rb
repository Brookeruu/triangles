require 'rspec'
require 'pry'
require 'triangles'

describe('#triangles') do
  it("Determines if sum of 2 sides are <= to 3rd") do
    triangle1 = Triangle.new(2,3,4)
    expect(triangle1.is_triangle()).to(eq(false))
  end
  # it("Determines if equilateral triangle") do
  #   expect()
  # end
  #
  # it("Determines if isosceles triangle") do
  #   expect()
  # end
  #
  # it("Determines if scalene triangle") do
  #   expect()
  # end


end
