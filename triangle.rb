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
  if (a <= 0) || (b <= 0) || (c <= 0)
    raise TriangleError, "Can't have 0 or a negative side length."
  elsif (a^2) + (b^2) != (c^2) && (a^2) + (c^2) != (b^2)|| (c^2) + (b^2) != (a^2)
    raise TriangleError, "this can't exist b/c pythagoras"
  end
  if a == b
  	if a == c
  		return :equilateral
  	else
  		return :isosceles
  	end
  elsif a == c
  	return :isosceles
  elsif b == c
  	return :isosceles
  else
  	return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
