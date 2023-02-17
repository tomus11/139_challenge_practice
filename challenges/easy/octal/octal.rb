=begin

to convert an octal number to decimal, create a linear combination of the digits times 8 to the power associated with that digit
  hundreds place - 2
  thousands - 3
  tens - 1
  ones -0
  
  so, 233 =
  2* 8^2 + 3* 8 ^1 + 3 * 8 ^ 0
  
input octal number
output the decimal equivalent

What if the octal value is 0?
What if octal value is negative?

steps
  -make sure input is an int. if not, return zero
  -convert the octal into and array of it's digits
  -initalize empty deciamal variable to 0
  -then, size of the array times do
    -remove and store the -1 index value in current_num
    -current_num * 8 ^ array_size(after destruction)
    -increment the varaible by the above
    **make sure the method to take the final value from the array is destructive
  -return decimal value.
  
=end

class Octal
  
  attr_accessor :decimal
  attr_reader :octal
  
  def initialize(octal)
    @octal = octal
    @decimal = 0
  end
  
  def to_decimal
    if octal.split("").all? { |char| char.to_i.to_s == char && char.to_i < 8 }
    
      digits = octal.to_i.digits
      size = digits.size.freeze
      
      size.times do |_|
        current_num = digits.pop
        self.decimal += (current_num * (8 ** digits.size))
      end
  
    end 
    @decimal
  end
end
    
  
    