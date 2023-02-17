=begin
Write a program that, given a natural number and a set of one or more other numbers, 
can find the sum of all the multiples of the numbers in the set that are less than the first number. 
If the set of numbers is not given, use a default set of 3 and 5.

For instance, if we list all the natural numbers up to, but not including, 20 that are multiples of either 3 or 5,
we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

Problem:
given a natural number and an array of one or more other numbers, find the sum of all numbers in the set that are less
than the first number. if no numbers given default to 3 and 5

given:
natural- 20
set- 3, 5

3, 6, 9, 12, 15, 18
5, 10
No uniques

t: create a set containing unique multiples less than natural number

steps:
-create multiples array with one value, 0
-iterate through possible multiple numbers
  -set current value to possible number times 1
  -while current value is less than natural number
    -append current value to multiples array
    -increment current value by this itterations multiple
-find the sum of the unique values in the multiples array.

=end

class SumOfMultiples
  attr_reader :possible_mults
   def self.to(num)
    self.new().to(num)
  end
  
  def initialize(*mults)
    @possible_mults = (mults.size > 0) ? mults : [3, 5];
  end
  
  def to(num)
    mults = [0]
    @possible_mults.each do |possible_mult|
      current = possible_mult
      while current < num
        mults << current
        current += possible_mult
      end
    end
    mults.uniq.reduce(:+)
  end
end

SumOfMultiples.new(7, 13, 17).to(20)

=begin

reflections. initializing a new object of this class being the functionality of the class method. notice how the instance method is run
if we're entering unique values for the multiples to test.

the test case for 1 should have been covered in algo. take time to look at multiple test cases to see all the edge cases

use of ternary opperator is LS solution. having the ternary opperator in 
skill basket could be useful.

The splat operator used in a method deinition will allow for 1 or more values to be passed. When these values are passed
they will be placed into an array.

=end
