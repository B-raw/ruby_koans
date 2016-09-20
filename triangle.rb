# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "One of the sides is of 0 or negative length!" if (a<=0 || b<+0 || c<=0)
  raise TriangleError, "That is not a triangle!" if a >= b+c || b >= a+c || c >= a+b
  ab = (a==b)
  bc = (b==c)
  ca = (c==a)
  if ab && bc
    :equilateral
  elsif ab || bc || ca
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
