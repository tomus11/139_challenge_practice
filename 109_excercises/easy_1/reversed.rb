def reversed_number(number)
  number.digits.join('').to_i
end

def reversed_number(num)
  string = num.to_s
  reversed = string.reverse
  reversed.to_i
end

=begin
similar solutions, different paths.
Important to remember that Array#join will produce a string??