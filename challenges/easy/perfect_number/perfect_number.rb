=begin

A perfect number is a number whose even divisors add up to the number
A deficient number is a number whose even divisors add up to be less than the number
an abundant number is a number whose divisors add up to be more than the number

A divisor is a number that can divide a number into integers
for this problem, the number itself does not count as a divisor
Since one of the greatest a divisor can be is the number, divided by 2, we only need to check numbers between 2 and the number divided by 2
There's deeper logic that may save on computing time(if number mod 2 is not zero we can only look at numbers up to number divided by three)

steps for finding divisors
-create divisor array with 1 in it
-from 2 to number / 2
  -check if number mod current itterative value equals zero
    -if yes, then add that itterative value to divisors array

Use reduce or inject to find the sum of all values in divisors array
  -compare sum to number, 
  -if greater return abundant
  -if less return deficient
  -if equal return perfect
  
=end

class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 1
    divisors = [1]
    
    (2..num/2).each do |potential_divisor|
      divisors << potential_divisor if (num % potential_divisor == 0)
    end
    
    sum = divisors.inject(:+)
    
    if sum < num
      'deficient'
    elsif sum > num
      'abundant'
    elsif sum == num
      'perfect'
    end
  end
end

  