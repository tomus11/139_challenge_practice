def negative(num)
  num > 0 ? num * -1 : num


def negative(number)
  number > 0 ? -number : number
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 

=begin
the ls solution is similar to mine but slightly simpler.
you can place - in front of the return value of number when
the ternary evals to true and it'll do what you want it to.

=end