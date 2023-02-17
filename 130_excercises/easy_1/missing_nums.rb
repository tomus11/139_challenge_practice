def missing(arr)
  (arr[0]..arr[-1]).to_a - arr
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []

def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first + 1)..(second - 1)).to_a)
  end
  result
end

=begin

the ls solution creates a method `missing` that takes one arg, `array`.
the initialize `result` to an empty array. 
call each_cons on `array` and pass `2` in as argumnet. this iterates through the array and passes two values to the block.
once in the block, the two values are used to create an array out of the range of values from 1 plus the first value and one less the second value.
this array is concatenated to result via the Array#concat method. concate adds all the elements from result and the array arg it takes to create a one dimensional array
that contains all the elements of both result and the arg passed to concat

my solution creates an array from the first value to the last and subtracts the input array. what you're left with are the missing values. 
=end