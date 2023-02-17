def drop_while(array)
  array.each_with_index do |ele, index|
    return array[index..-1] unless yield(ele)
  end
  []
end

def drop_while(array)
  index = 0
  while index < array.size && yield(array[index])
    index += 1
  end

  array[index..-1]
end

=begin

I like the ls solution in that it places all the logic into one boolean statement
while index is less that the size of the array and the block returns a truthy value, increment the index

once this while statement breaks, we create a slice of the array from the index value that returned false from the block
to the end of the input array. 
=end

