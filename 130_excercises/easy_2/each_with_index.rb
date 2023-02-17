def each_with_index(array)
  index = 0
  array.each { |ele| yield(ele, index)
  array
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]


=begin
question for brenno

def method(var2, &var)
  var.call(var2)
  yield(var2)
  #puts ‘hi’
end

#method(1) { |parm| puts “hi #{parm}. ” }


var = :to_s
p method(1, &var)

=begin
question about execution line by line
11->10->1->2->??->3->11

uestion about execution line by line
11->10->1->2->??


Where does execution jump to with unary & in method def?(line 1)

on line 2 does it jump to &var in line 11 which then jumps to line 10 and then 12 so proc executes or does ruby somehow store the block associated with &var when line 11 is first executed and doesn't need to look for `var` in memory?

Similar question when we get to line 3

# a = 'hi'
# a

# line 32 returns `a`, but does execution go to line 31 to see what `a` is?

def method(var2, &var)
  var.call
  
  # yield(var2)
end

#method(1) { |parm| puts "hi #{parm}. " }


var = :to_s 
p method(1, &:dog) #proc { |value| nil.dog }

=end
