def count(array)
  count = 0
  0.upto((array.size - 1)) do |index|
    count += 1 if yield(array[index])
  end
  count
end

def count(collection)
  collection.reduce(0) {|sum, el| yield(el) ? sum + 1 : sum }
end

=begin
My solution is straight forward... simple solutions for a simple mind.
JD's is also simple and straight forward but demonstrates a greater depth of knowledge about ruby standard library methods

here, he calls reduce on the collection and passes 0 as an arg. he also defines and passes a block to reduce with two parameters sum and el. sum is initialized
to 0 , the arg passed to reduce while ele represents each element in the collection. each element is passed to the reduce block where it is yielded to the
block passed to count. the return value of each iteration will be used in the ternary opperator. If count block returns true then the we add 1 to sum, false
we get sum. 
sum is returned, representing the count of truthy return values from the count block. 

=end

