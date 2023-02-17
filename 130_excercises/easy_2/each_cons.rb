def each_cons(arr, size)
  0.upto(arr.size - 1) do |index|
    slice = arr[index, size]#: slice = arr[index]
    break if slice.size < size
    yield(*slice)
  end
end

def each_cons(array, n)
  array.each_index do |index|
    break if index + n - 1 >= array.size
    yield(*array[index..(index + n - 1)])
  end
  nil
end

=begin
the ls solution calls each_index on the input array. the
block has a break conditional that checks if index, minus 
1 plus n is greater than or equal to the array size. so
as the value of index increases, so too does the value of
index + n - 1. Thus if the slice is going to be smaller than
n, then the iteration ends. then the slice of the array from 
index to index +n - 1 is yielded to the block. A splat oppera
tor is used on array in the yield arg and I don't know what 
it does. 

what it does is pass a variable number of elements to the block. 

in my code, if I yield(*slice) then I can remove my ternary opperator
I think whats happening is the individual values are being passed
rather than the slice of the array
=end

