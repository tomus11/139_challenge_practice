def divisors(num)
  divisors = []
  1.upto(num) do |possible_divisor|
    divisors << possible_divisor if num % possible_divisor == 0
  end
  divisors
end

def divisors(number)
  1.upto(number).select do |candidate|
    number % candidate == 0
  end
end

=begin

a trend I am noticing is that I have a hammer and I am trying to apply it everthing. My solution works, but stepping back and taking a moment to 
consider the problem space as well as all the tools I have available to me and carefully select the best tool is the better technique

my solution works, however, the launch school solution is much more elegant. reading the documentation of Integer#upto, we see that this method returns
an enumerator if no block is passed an invocation. Then, select is called on this enumerator and when passed a block. returns an array. the block passed 
contains the selection logic I used within my #upto block. 

I will pat myself on the back for clarity in terms of variable and parameter naming. 

=end