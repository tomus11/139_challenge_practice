=begin
write a program with a class Triangle that takes three floats as arguments and determins what kind of tringle it is
Scalene, equlateral, isosceles
scalene-all sides different lengths
equilateral-all sides same length
isosceles-two sides are the same length


For a shape to be a triangle all sides must be greater than 0 and the sum of any two sides must be greater than the length of the third

The class will have the following instance variables
  s1,s2,s3
  kind

class should also raise an argument error if the side measurements given do not create a triangle

=end

class Triangle
  attr_reader :kind
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [s1, s2, s3]
    
    @kind = type
  end
  
  def is_a_triangle?
    return false if @sides.any? { |side| side <= 0}
    return false if ((@s1 + @s2) <= @s3) || ((@s1 + @s3) <= @s2) || ((@s3 + @s2) <= @s1)
    true
  end
  
  def type
    unless is_a_triangle?
      raise ArgumentError.new "This is not a triangle"
    end
    matches = side_match
    return 'isosceles' if matches == 1
    return 'scalene' if matches == 0
    return 'equilateral' if matches > 2
  end
  
  def side_match
    matches = 0
    matches += 1 if @s1 == @s2
    matches += 1 if @s1 == @s3
    matches += 1 if @s2 == @s3
    matches
  end
end 