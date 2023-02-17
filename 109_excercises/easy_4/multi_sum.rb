def multisum(num)
  mults = []
  1.upto(num) {|num| mults << num if (num % 3 == 0 || num % 5 == 0)}
  mults.inject(:+)
end

=begin

i've come a long way. 

=end